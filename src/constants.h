#pragma once
#include <cstdint>
// Note: If pragma doesn't work, use #ifndef #define #endif

namespace sph_program {

typedef double real_t;
#define REAL_FMT "%.4e"

typedef int64_t int_t;
#define INT_FMT "%ld"

// =================================================================================================
// Paramaters
// =================================================================================================

// Spatial discretization / resolution
#define DELTA (0.01)

// Tank scalar
#define A (1.0)
// Dam height
#define T (0.6 * A + 3 * DELTA)
// Dam width
#define L (1.2 * A + 5 * DELTA)
// Tank width
#define B (3.22 * A)

// H = 0.94 * DELTA * sqrt(2) , with precomputed sqrt(2)p
#define H (0.94 * DELTA * 1.4142135623730951)

// =================================================================================================
// Constants (derived from parameters)
// =================================================================================================

const real_t D_tank = 1.0 * A;
const real_t skale_k = 3.0;
const real_t density = 1e3;
const real_t dt = 1e-4;  // Time step
const real_t sos = 50.0; // Speed of sound in water (Acoustic wave drop)
const real_t g = 9.81;

const int_t free_surface = 30;

// =================================================================================================
// Runtime parameters
// =================================================================================================

const int_t MAX_TIME_STEP = 120000;

} // namespace sph_program