#include <cmath>
#include <cstdlib>
#include <iomanip>
#include <iostream>

#include "matrix_mult.h"

template <typename T, int ROWS, int COLS>
void print_matrix(const char* name, T (&m)[ROWS][COLS]) {
  std::cout << name << " (" << ROWS << "x" << COLS << "):\n";
  for (int i = 0; i < ROWS; ++i) {
    for (int j = 0; j < COLS; ++j) {
      std::cout << std::setw(10) << std::setprecision(4) << std::fixed << m[i][j];
    }
    std::cout << "\n";
  }
  std::cout << "\n";
}

int main() {
  mat_a a[IN_A_ROWS][IN_A_COLS];
  mat_b b[IN_B_ROWS][IN_B_COLS];
  mat_prod dut[IN_A_ROWS][IN_B_COLS];
  mat_prod golden[IN_A_ROWS][IN_B_COLS];

  // Deterministic non-trivial values to exercise accumulation.
  for (int i = 0; i < IN_A_ROWS; ++i) {
    for (int j = 0; j < IN_A_COLS; ++j) {
      a[i][j] = static_cast<float>((i * 3 - j * 2) % 11);
    }
  }

  for (int i = 0; i < IN_B_ROWS; ++i) {
    for (int j = 0; j < IN_B_COLS; ++j) {
      b[i][j] = static_cast<float>((i + j * 4 - 7) % 13);
    }
  }

  // Golden software GEMM.
  for (int i = 0; i < IN_A_ROWS; ++i) {
    for (int j = 0; j < IN_B_COLS; ++j) {
      float sum = 0.0f;
      for (int k = 0; k < IN_B_ROWS; ++k) {
        sum += a[i][k] * b[k][j];
      }
      golden[i][j] = sum;
    }
  }

  // Device under test.
  matrix_mult(a, b, dut);

  print_matrix("Input A", a);
  print_matrix("Input B", b);
  print_matrix("Output (DUT)", dut);
  print_matrix("Golden", golden);

  const float tol = 1e-4f;
  int mismatches = 0;
  for (int i = 0; i < IN_A_ROWS; ++i) {
    for (int j = 0; j < IN_B_COLS; ++j) {
      float diff = std::abs(dut[i][j] - golden[i][j]);
      if (diff > tol) {
        if (mismatches < 10) {
          std::cout << "Mismatch at [" << i << "][" << j << "]: "
                    << "dut=" << std::setprecision(8) << dut[i][j]
                    << ", golden=" << golden[i][j] << ", diff=" << diff
                    << "\n";
        }
        ++mismatches;
      }
    }
  }

  if (mismatches == 0) {
    std::cout << "PASS: GEMM output matches golden matrix.\n";
    return 0;
  }

  std::cout << "FAIL: " << mismatches << " mismatches found.\n";
  return 1;
}
