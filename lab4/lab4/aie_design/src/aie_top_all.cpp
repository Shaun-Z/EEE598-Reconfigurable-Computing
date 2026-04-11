#include "aie_top.h"
#include "png_utils/png_utils.cpp"
using namespace adf;

#define INPUT_IMG_H 256
#define INPUT_IMG_W 256

aie_adf_graph accel;

#if defined(__AIESIM__) || defined(__X86SIM__)
int main(int argc, char **argv) {
    std::cout << "Simulation started!!" << std::endl;

    const char *filename_ip = "/home/xiangyu/EEE598-Reconfigurable-Computing/lab4/lab4/aie_design/src/stego_image.png";
    const char *filename_key = "/home/xiangyu/EEE598-Reconfigurable-Computing/lab4/lab4/aie_design/src/key_image.png";
    const char *filename_out = "/home/xiangyu/EEE598-Reconfigurable-Computing/lab4/lab4/aie_design/src/decrypted_image_out.png";

    std::vector<unsigned char> image;
    std::vector<unsigned char> imageKey;

    unsigned width = 0, height = 0;

    if (!load_decode_and_print_png(filename_ip, image, width, height)) {
        return -1;
    }
    if (!load_decode_and_print_png(filename_key, imageKey, width, height)) {
        return -1;
    }

    // Each chunk is one kernel block: 128 * 128 = 16384 bytes
    int CHUNK_SIZE = KERNEL_IP_IMG_H * KERNEL_IP_IMG_W;
    int TOTAL_SIZE = INPUT_IMG_H * INPUT_IMG_W;

    // Allocate per-chunk input and output buffers
    uint8_t *dinArrayIP[NUM_PARALLEL];
    uint8_t *dinArrayKey[NUM_PARALLEL];
    uint8_t *doutArrayOUT[NUM_PARALLEL];

    for (int i = 0; i < NUM_PARALLEL; i++) {
        dinArrayIP[i] = (uint8_t *)GMIO::malloc(CHUNK_SIZE);
        dinArrayKey[i] = (uint8_t *)GMIO::malloc(CHUNK_SIZE);
        doutArrayOUT[i] = (uint8_t *)GMIO::malloc(CHUNK_SIZE);

        for (int j = 0; j < CHUNK_SIZE; j++) {
            dinArrayIP[i][j] = image[i * CHUNK_SIZE + j];
            dinArrayKey[i][j] = imageKey[i * CHUNK_SIZE + j];
        }
    }

    std::cout << "Graph initialized!!" << std::endl;
    accel.init();

    // Send all chunks to AIEs in parallel (non-blocking)
    std::cout << "Start data transfer to AIEs!!" << std::endl;
    for (int i = 0; i < NUM_PARALLEL; i++) {
        accel.image[i].gm2aie_nb(dinArrayIP[i], CHUNK_SIZE);
        accel.key[i].gm2aie_nb(dinArrayKey[i], CHUNK_SIZE);
    }

    // Run 1 iteration since each chunk is processed by its own pipeline
    int iteration = 1;
    std::cout << "Graph execution started for " << iteration << " iterations!!" << std::endl;
    accel.run(iteration);

    // Receive all output chunks
    std::cout << "Start data transfer from AIEs!!" << std::endl;
    for (int i = 0; i < NUM_PARALLEL; i++) {
        accel.out[i].aie2gm(doutArrayOUT[i], CHUNK_SIZE);
    }

    std::cout << "Waiting for AIE graph to complete and transfer output data back!!" << std::endl;
    for (int i = 0; i < NUM_PARALLEL; i++) {
        accel.out[i].wait();
    }

    // Reassemble the full output image
    std::vector<unsigned char> fullOutput(TOTAL_SIZE);
    for (int i = 0; i < NUM_PARALLEL; i++) {
        for (int j = 0; j < CHUNK_SIZE; j++) {
            fullOutput[i * CHUNK_SIZE + j] = doutArrayOUT[i][j];
        }
    }

    savePNG(filename_out, fullOutput, width, height);

    accel.end();

    for (int i = 0; i < NUM_PARALLEL; i++) {
        GMIO::free(dinArrayIP[i]);
        GMIO::free(dinArrayKey[i]);
        GMIO::free(doutArrayOUT[i]);
    }

    return 0;
}
#endif
