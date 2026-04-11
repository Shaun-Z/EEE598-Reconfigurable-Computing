#include "aie_top.h"
#include "png_utils/png_utils.cpp"
using namespace adf;

#define INPUT_IMG_H 256
#define INPUT_IMG_W 256

aie_adf_graph accel;

#if defined(__AIESIM__) || defined(__X86SIM__)
int main(int argc, char **argv) {
    std::cout << "Simulation started!!";

    // File paths for input image, key image, and output image
    // Please set it to absolute path on your system    
    const char *filename_ip = "/home/xiangyu/EEE598-Reconfigurable-Computing/lab4/lab4/aie_design/src/stego_image.png";
    const char *filename_key = "/home/xiangyu/EEE598-Reconfigurable-Computing/lab4/lab4/aie_design/src/key_image.png";
    const char *filename_out = "/home/xiangyu/EEE598-Reconfigurable-Computing/lab4/lab4/aie_design/src/decrypted_image_out.png";

    std::vector<unsigned char> image;    // GREY pixels (1 byte per pixel)
    std::vector<unsigned char> imageKey; // GREY pixels (1 byte per pixel)
    
    unsigned width = 0, height = 0;

    // Load input image and key image
    if (!load_decode_and_print_png(filename_ip, image, width, height)) {
        return -1;
    }

    if (!load_decode_and_print_png(filename_key, imageKey, width, height)) {
        return -1;
    }


    // Set the size of input image and output image
    // Key image size = input image size
    int BLOCK_SIZE_in_BytesIP = INPUT_IMG_H * INPUT_IMG_W;
    int BLOCK_SIZE_in_BytesOUT = INPUT_IMG_H * INPUT_IMG_W;

    uint8_t *dinArrayIP = (uint8_t *)GMIO::malloc(BLOCK_SIZE_in_BytesIP);
    for (int i = 0; i < BLOCK_SIZE_in_BytesIP; i++) {
        dinArrayIP[i] = image[i];
    }

    uint8_t *dinArrayKey = (uint8_t *)GMIO::malloc(BLOCK_SIZE_in_BytesIP);
    for (int i = 0; i < BLOCK_SIZE_in_BytesIP; i++) {
        dinArrayKey[i] = imageKey[i];
    }

    uint8_t *doutArrayOUT = (uint8_t *)GMIO::malloc(BLOCK_SIZE_in_BytesOUT);
    
    std::cout << "Graph initialized!!" << std::endl;
    accel.init();

    std::cout << "Start data transfer to AIEs!!" << std::endl;
    accel.image.gm2aie_nb(dinArrayIP, BLOCK_SIZE_in_BytesIP);
    accel.key.gm2aie_nb(dinArrayKey, BLOCK_SIZE_in_BytesIP);

    int iteration = (INPUT_IMG_H * INPUT_IMG_W) / (KERNEL_IP_IMG_H * KERNEL_IP_IMG_W);
    std::cout << "Graph execution started for " << iteration << " iterations!!" << std::endl;
    accel.run(iteration);

    std::cout << "Start data transfer from AIEs!!" << std::endl;
    accel.out.aie2gm(doutArrayOUT, BLOCK_SIZE_in_BytesOUT);

    std::cout << "Waiting for AIE graph to complete and transfer output data back!!" << std::endl;
    accel.out.wait();

    // Enable this for debugging output
    // for (int i = 0; i < BLOCK_SIZE_in_BytesOUT; i++) {
    //     std::cout << "doutOUT[" << i << "]=" << static_cast<unsigned>(doutArrayOUT[i])
    //               << std::endl;
    // }
    savePNG(
        filename_out,
        std::vector<unsigned char>(doutArrayOUT, doutArrayOUT + BLOCK_SIZE_in_BytesOUT),
        width, height);

    accel.end();

    GMIO::free(dinArrayIP);
    GMIO::free(dinArrayKey);
    GMIO::free(doutArrayOUT);

    return 0;
}
#endif
