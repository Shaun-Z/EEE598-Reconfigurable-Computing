#include <adf.h>
#include "include.h"
#include <stdio.h>

#define NUM_PARALLEL 4

class aie_adf_graph : public adf::graph {
public:
    input_gmio image[NUM_PARALLEL];
    input_gmio key[NUM_PARALLEL];
    output_gmio out[NUM_PARALLEL];

    kernel decrypt_k[NUM_PARALLEL];
    kernel thresholding_k[NUM_PARALLEL];

    aie_adf_graph() {
        for (int i = 0; i < NUM_PARALLEL; i++) {
            std::string img_name = "image_" + std::to_string(i);
            std::string key_name = "key_" + std::to_string(i);
            std::string out_name = "out_" + std::to_string(i);

            image[i] = input_gmio::create(img_name.c_str(), 64, 10000);
            key[i] = input_gmio::create(key_name.c_str(), 64, 10000);
            out[i] = output_gmio::create(out_name.c_str(), 64, 10000);

            decrypt_k[i] = kernel::create(decrypt);
            source(decrypt_k[i]) = "kernels/decrypt.cc";
            runtime<ratio>(decrypt_k[i]) = 1;

            thresholding_k[i] = kernel::create(thresholding);
            source(thresholding_k[i]) = "kernels/thresholding.cc";
            runtime<ratio>(thresholding_k[i]) = 1;

            connect<>(image[i].out[0], decrypt_k[i].in[0]);
            dimensions(decrypt_k[i].in[0]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};

            connect<>(key[i].out[0], decrypt_k[i].in[1]);
            dimensions(decrypt_k[i].in[1]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};

            connect<>(decrypt_k[i].out[0], thresholding_k[i].in[0]);
            dimensions(decrypt_k[i].out[0]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};
            dimensions(thresholding_k[i].in[0]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};

            connect<>(thresholding_k[i].out[0], out[i].in[0]);
            dimensions(thresholding_k[i].out[0]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};
        }
    }
};
