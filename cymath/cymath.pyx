include "cymath.pxi"

cdef extern from "math.h" nogil:
    double math_fabs "fabs"(double)

cdef extern from "complex.h" nogil:
    double math_cabs "cabs"(double complex)
    double math_carg "carg"(double complex)
    float complex complex_cprojf "cprojf"(float complex)
    double complex complex_cproj "cproj"(double complex)
    long double complex complex_cprojl "cprojl"(long double complex)


cdef double abs(double_double_complex_t x) nogil:
    if double_double_complex_t is double:
        return math_fabs(x)
    else:
        return math_cabs(x)


cdef double arg(double complex x) nogil:
    return math_carg(x)


cdef complex_t proj(complex_t x) nogil:
    if complex_t is float_complex:
        return complex_cprojf(x)
    elif complex_t is double_complex:
        return complex_cproj(x)
    else:
        return complex_cprojl(x)
