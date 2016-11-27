include "libm.pxi"


cdef extern from "complex.h" nogil:
    float complex complex_cprojf "cprojf"(float complex)
    double complex complex_cproj "cproj"(double complex)
    long double complex complex_cprojl "cprojl"(long double complex)


cdef complex_t proj(complex_t x) nogil:
    if complex_t is float_complex:
        return complex_cprojf(x)
    elif complex_t is double_complex:
        return complex_cproj(x)
    else:
        return complex_cprojl(x)
