#include <aie_api/aie.hpp>
#include <aie_api/aie_adf.hpp>
#include "include.h"
#include <cstdint>

void thresholding(adf::input_buffer<uint8_t> &__restrict image,
                  adf::output_buffer<uint8_t> &__restrict output) {

    constexpr int num_elems = KERNEL_IP_IMG_H * KERNEL_IP_IMG_W;
    constexpr int vec_size = 32; // 32 x uint8 = 256-bit vector

    const uint8_t *__restrict pIn = image.data();
    uint8_t *__restrict pOut = output.data();

    aie::vector<uint8_t, vec_size> zero_vec = aie::zeros<uint8_t, vec_size>();
    aie::vector<uint8_t, vec_size> max_vec = aie::broadcast<uint8_t, vec_size>(255);

    for (int i = 0; i < num_elems; i += vec_size)
        chess_prepare_for_pipelining {
            aie::vector<uint8_t, vec_size> vIn = aie::load_v<vec_size>(pIn + i);
            aie::mask<vec_size> cmp = aie::gt(vIn, zero_vec);
            aie::vector<uint8_t, vec_size> vOut = aie::select(zero_vec, max_vec, cmp);
            aie::store_v(pOut + i, vOut);
        }
}