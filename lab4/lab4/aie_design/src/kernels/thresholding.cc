#include <aie_api/aie.hpp>
#include <aie_api/aie_adf.hpp>
#include "include.h"


void thresholding(adf::input_buffer<uint8_t> &__restrict image,
                  adf::output_buffer<uint8_t> &__restrict output) {

    constexpr int num_elems = KERNEL_IP_IMG_H * KERNEL_IP_IMG_W;

    const uint8_t *__restrict pIn = image.data();
    uint8_t *__restrict pOut = output.data();

    for (int i = 0; i < num_elems; ++i)
        chess_prepare_for_pipelining {
            pOut[i] = (pIn[i] > 0) ? 255 : 0;
        }
}