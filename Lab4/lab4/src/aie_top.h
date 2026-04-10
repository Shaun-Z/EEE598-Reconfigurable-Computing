#include <adf.h>
#include "include.h"
#include <stdio.h>

class aie_adf_graph : public adf::graph {
public:
    input_gmio image;
    input_gmio key;
    output_gmio out;

    kernel decrypt_k[1];
    kernel thresholding_k[1];

    aie_adf_graph() {
        image = input_gmio::create("image", 64, 10000);
        key = input_gmio::create("key", 64, 10000);
        out = output_gmio::create("out", 64, 10000);

        decrypt_k[0] = kernel::create(decrypt);
        source(decrypt_k[0]) = "kernels/decrypt.cc";
        runtime<ratio>(decrypt_k[0]) = 1;

        thresholding_k[0] = kernel::create(thresholding);
        source(thresholding_k[0]) = "kernels/thresholding.cc";
        runtime<ratio>(thresholding_k[0]) = 1;

        connect<>(image.out[0], decrypt_k[0].in[0]);
        dimensions(decrypt_k[0].in[0]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};

        connect<>(key.out[0], decrypt_k[0].in[1]);
        dimensions(decrypt_k[0].in[1]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};

        connect<>(decrypt_k[0].out[0], thresholding_k[0].in[0]);
        dimensions(decrypt_k[0].out[0]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};
        dimensions(thresholding_k[0].in[0]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};

        connect<>(thresholding_k[0].out[0], out.in[0]);
        dimensions(thresholding_k[0].out[0]) = {KERNEL_IP_IMG_H * KERNEL_IP_IMG_W};
    }
};