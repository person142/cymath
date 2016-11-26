ctypedef long double long_double
ctypedef float complex float_complex
ctypedef double complex double_complex
ctypedef long double complex long_double_complex


ctypedef fused real_t:
    float
    double
    long double

ctypedef fused complex_t:
    float complex
    double complex
    long double complex

ctypedef fused real_complex_t:
    float
    double
    long double
    float complex
    double complex
    long double complex


# abs
cpdef real_complex_t acos(real_complex_t) nogil
cpdef real_complex_t acosh(real_complex_t) nogil
# arg
cpdef real_complex_t asin(real_complex_t) nogil
cpdef real_complex_t asinh(real_complex_t) nogil
cpdef real_complex_t atan(real_complex_t) nogil
cpdef real_complex_t atanh(real_complex_t) nogil
# conj -- just use .conjugate()
cpdef real_complex_t cos(real_complex_t) nogil
cpdef real_complex_t cosh(real_complex_t) nogil
cpdef real_complex_t exp(real_complex_t) nogil
# imag -- just use .imag
cpdef real_complex_t log(real_complex_t) nogil
# pow -- just use **
cpdef complex_t proj(complex_t) nogil
# real -- just use .real
cpdef real_complex_t sin(real_complex_t) nogil
cpdef real_complex_t sinh(real_complex_t) nogil
cpdef real_complex_t sqrt(real_complex_t) nogil
cpdef real_complex_t tan(real_complex_t) nogil
cpdef real_complex_t tanh(real_complex_t) nogil
