#ifndef QUATERNION_H
#define QUATERNION_H

#include <stdint.h>

#include "math.h"

// General 32-bit vector (arbitrary units).
typedef struct {
    float x;
    float y;
    float z;
} Vec32;

// General 32-bit quaternion (fix2.30).
typedef struct {
    float w;
    float x;
    float y;
    float z;
} Quat32;

// Creates a quaternion from a vector (fix2.30).
void quat32_from_vector(Quat32* res, Vec32* vec);

// Calculates a * b.
// In-place NOT supported.
void quat32_multiply(Quat32* res, Quat32* a, Quat32* b);

// Calculates a' * b.
// In-place NOT supported.
void quat32_leftdivide(Quat32* res, Quat32* a, Quat32* b);

// Transforms a vector by a quaternion.
// Vector length should be less than 2^31 to avoid overflow of intermediate results.
// In-place is supported.
void quat32_transform(Vec32* res, Quat32* q, Vec32* v);
void quat32_invtransform(Vec32* res, Quat32* q, Vec32* v);

// Normalizes a vector (fix16.16).
// In-place is supported.
void vec32_normalize_32f16(Vec32* res, Vec32* v);

// Normalizes a quaternion.
// In-place is supported.
void quat32_normalize(Quat32* res, Quat32* q);

// Converts a quaternion to a matrix.
// Useful only if a few matrix elements are required, but very inefficient if the entire matrix is needed.
float quat32_m11(Quat32* q);
float quat32_m12(Quat32* q);
float quat32_m13(Quat32* q);
float quat32_m21(Quat32* q);
float quat32_m22(Quat32* q);
float quat32_m23(Quat32* q);
float quat32_m31(Quat32* q);
float quat32_m32(Quat32* q);
float quat32_m33(Quat32* q);

#endif // QUATERNION_H
