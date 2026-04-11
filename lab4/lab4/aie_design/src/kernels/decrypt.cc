#include "aie_api/aie.hpp"
#include "aie_api/aie_adf.hpp"
#include "include.h"
#include <adf.h>
#include <cstdint>

using namespace adf;

void decrypt(adf::input_buffer<uint8_t> &__restrict image,
             adf::input_buffer<uint8_t> &__restrict key,
             adf::output_buffer<uint8_t> &__restrict output) {
    constexpr int num_elems = KERNEL_IP_IMG_H * KERNEL_IP_IMG_W;
    constexpr int vec_size = 32; // 32 x uint8 = 256-bit vector

    const uint8_t *__restrict pA = image.data();
    const uint8_t *__restrict pB = key.data();
    uint8_t *__restrict pC = output.data();

    for (int i = 0; i < num_elems; i += vec_size)
        chess_prepare_for_pipelining {
            aie::vector<uint8_t, vec_size> vA = aie::load_v<vec_size>(pA + i);
            aie::vector<uint8_t, vec_size> vB = aie::load_v<vec_size>(pB + i);
            aie::vector<uint8_t, vec_size> vC = aie::bit_xor(vA, vB);
            aie::store_v(pC + i, vC);
        }
}

