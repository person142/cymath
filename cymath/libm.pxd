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

ctypedef fused double_double_complex_t:
    double
    double complex

ctypedef fused real_complex_t:
    float
    double
    long double
    float complex
    double complex
    long double complex


cdef double abs(double_double_complex_t) nogil
cdef real_complex_t acos(real_complex_t) nogil
cdef real_complex_t acosh(real_complex_t) nogil
cdef double arg(double complex) nogil
cdef real_complex_t asin(real_complex_t) nogil
cdef real_complex_t asinh(real_complex_t) nogil
cdef real_complex_t atan(real_complex_t) nogil
cdef real_complex_t atanh(real_complex_t) nogil
# conj -- just use .conjugate()
cdef real_complex_t cos(real_complex_t) nogil
cdef real_complex_t cosh(real_complex_t) nogil
cdef real_complex_t exp(real_complex_t) nogil
# imag -- just use .imag
cdef real_complex_t log(real_complex_t) nogil
# pow -- just use **
cdef complex_t proj(complex_t) nogil
# real -- just use .real
cdef real_complex_t sin(real_complex_t) nogil
cdef real_complex_t sinh(real_complex_t) nogil
cdef real_complex_t sqrt(real_complex_t) nogil
cdef real_complex_t tan(real_complex_t) nogil
cdef real_complex_t tanh(real_complex_t) nogil
