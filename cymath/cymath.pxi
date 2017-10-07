cdef extern from "math.h" nogil:
    float math_acosf "acosf"(float)
    double math_acos "acos"(double)
    long double math_acosl "acosl"(long double)
    float math_acoshf "acoshf"(float)
    double math_acosh "acosh"(double)
    long double math_acoshl "acoshl"(long double)
    float math_asinf "asinf"(float)
    double math_asin "asin"(double)
    long double math_asinl "asinl"(long double)
    float math_asinhf "asinhf"(float)
    double math_asinh "asinh"(double)
    long double math_asinhl "asinhl"(long double)
    float math_atanf "atanf"(float)
    double math_atan "atan"(double)
    long double math_atanl "atanl"(long double)
    float math_atanhf "atanhf"(float)
    double math_atanh "atanh"(double)
    long double math_atanhl "atanhl"(long double)
    float math_cosf "cosf"(float)
    double math_cos "cos"(double)
    long double math_cosl "cosl"(long double)
    float math_coshf "coshf"(float)
    double math_cosh "cosh"(double)
    long double math_coshl "coshl"(long double)
    float math_expf "expf"(float)
    double math_exp "exp"(double)
    long double math_expl "expl"(long double)
    float math_logf "logf"(float)
    double math_log "log"(double)
    long double math_logl "logl"(long double)
    float math_sinf "sinf"(float)
    double math_sin "sin"(double)
    long double math_sinl "sinl"(long double)
    float math_sinhf "sinhf"(float)
    double math_sinh "sinh"(double)
    long double math_sinhl "sinhl"(long double)
    float math_sqrtf "sqrtf"(float)
    double math_sqrt "sqrt"(double)
    long double math_sqrtl "sqrtl"(long double)
    float math_tanf "tanf"(float)
    double math_tan "tan"(double)
    long double math_tanl "tanl"(long double)
    float math_tanhf "tanhf"(float)
    double math_tanh "tanh"(double)
    long double math_tanhl "tanhl"(long double)

cdef extern from "complex.h" nogil:
    float complex complex_cacosf "cacosf"(float complex)
    double complex complex_cacos "cacos"(double complex)
    long double complex complex_cacosl "cacosl"(long double complex)
    float complex complex_cacoshf "cacoshf"(float complex)
    double complex complex_cacosh "cacosh"(double complex)
    long double complex complex_cacoshl "cacoshl"(long double complex)
    float complex complex_casinf "casinf"(float complex)
    double complex complex_casin "casin"(double complex)
    long double complex complex_casinl "casinl"(long double complex)
    float complex complex_casinhf "casinhf"(float complex)
    double complex complex_casinh "casinh"(double complex)
    long double complex complex_casinhl "casinhl"(long double complex)
    float complex complex_catanf "catanf"(float complex)
    double complex complex_catan "catan"(double complex)
    long double complex complex_catanl "catanl"(long double complex)
    float complex complex_catanhf "catanhf"(float complex)
    double complex complex_catanh "catanh"(double complex)
    long double complex complex_catanhl "catanhl"(long double complex)
    float complex complex_ccosf "ccosf"(float complex)
    double complex complex_ccos "ccos"(double complex)
    long double complex complex_ccosl "ccosl"(long double complex)
    float complex complex_ccoshf "ccoshf"(float complex)
    double complex complex_ccosh "ccosh"(double complex)
    long double complex complex_ccoshl "ccoshl"(long double complex)
    float complex complex_cexpf "cexpf"(float complex)
    double complex complex_cexp "cexp"(double complex)
    long double complex complex_cexpl "cexpl"(long double complex)
    float complex complex_clogf "clogf"(float complex)
    double complex complex_clog "clog"(double complex)
    long double complex complex_clogl "clogl"(long double complex)
    float complex complex_csinf "csinf"(float complex)
    double complex complex_csin "csin"(double complex)
    long double complex complex_csinl "csinl"(long double complex)
    float complex complex_csinhf "csinhf"(float complex)
    double complex complex_csinh "csinh"(double complex)
    long double complex complex_csinhl "csinhl"(long double complex)
    float complex complex_csqrtf "csqrtf"(float complex)
    double complex complex_csqrt "csqrt"(double complex)
    long double complex complex_csqrtl "csqrtl"(long double complex)
    float complex complex_ctanf "ctanf"(float complex)
    double complex complex_ctan "ctan"(double complex)
    long double complex complex_ctanl "ctanl"(long double complex)
    float complex complex_ctanhf "ctanhf"(float complex)
    double complex complex_ctanh "ctanh"(double complex)
    long double complex complex_ctanhl "ctanhl"(long double complex)


cdef real_complex_t acos(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_acosf(x)
    elif real_complex_t is double:
        return math_acos(x)
    elif real_complex_t is long_double:
        return math_acosl(x)
    elif real_complex_t is float_complex:
        return complex_cacosf(x)
    elif real_complex_t is double_complex:
        return complex_cacos(x)
    else:
        return complex_cacosl(x)


cdef real_complex_t acosh(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_acoshf(x)
    elif real_complex_t is double:
        return math_acosh(x)
    elif real_complex_t is long_double:
        return math_acoshl(x)
    elif real_complex_t is float_complex:
        return complex_cacoshf(x)
    elif real_complex_t is double_complex:
        return complex_cacosh(x)
    else:
        return complex_cacoshl(x)


cdef real_complex_t asin(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_asinf(x)
    elif real_complex_t is double:
        return math_asin(x)
    elif real_complex_t is long_double:
        return math_asinl(x)
    elif real_complex_t is float_complex:
        return complex_casinf(x)
    elif real_complex_t is double_complex:
        return complex_casin(x)
    else:
        return complex_casinl(x)


cdef real_complex_t asinh(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_asinhf(x)
    elif real_complex_t is double:
        return math_asinh(x)
    elif real_complex_t is long_double:
        return math_asinhl(x)
    elif real_complex_t is float_complex:
        return complex_casinhf(x)
    elif real_complex_t is double_complex:
        return complex_casinh(x)
    else:
        return complex_casinhl(x)


cdef real_complex_t atan(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_atanf(x)
    elif real_complex_t is double:
        return math_atan(x)
    elif real_complex_t is long_double:
        return math_atanl(x)
    elif real_complex_t is float_complex:
        return complex_catanf(x)
    elif real_complex_t is double_complex:
        return complex_catan(x)
    else:
        return complex_catanl(x)


cdef real_complex_t atanh(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_atanhf(x)
    elif real_complex_t is double:
        return math_atanh(x)
    elif real_complex_t is long_double:
        return math_atanhl(x)
    elif real_complex_t is float_complex:
        return complex_catanhf(x)
    elif real_complex_t is double_complex:
        return complex_catanh(x)
    else:
        return complex_catanhl(x)


cdef real_complex_t cos(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_cosf(x)
    elif real_complex_t is double:
        return math_cos(x)
    elif real_complex_t is long_double:
        return math_cosl(x)
    elif real_complex_t is float_complex:
        return complex_ccosf(x)
    elif real_complex_t is double_complex:
        return complex_ccos(x)
    else:
        return complex_ccosl(x)


cdef real_complex_t cosh(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_coshf(x)
    elif real_complex_t is double:
        return math_cosh(x)
    elif real_complex_t is long_double:
        return math_coshl(x)
    elif real_complex_t is float_complex:
        return complex_ccoshf(x)
    elif real_complex_t is double_complex:
        return complex_ccosh(x)
    else:
        return complex_ccoshl(x)


cdef real_complex_t exp(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_expf(x)
    elif real_complex_t is double:
        return math_exp(x)
    elif real_complex_t is long_double:
        return math_expl(x)
    elif real_complex_t is float_complex:
        return complex_cexpf(x)
    elif real_complex_t is double_complex:
        return complex_cexp(x)
    else:
        return complex_cexpl(x)


cdef real_complex_t log(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_logf(x)
    elif real_complex_t is double:
        return math_log(x)
    elif real_complex_t is long_double:
        return math_logl(x)
    elif real_complex_t is float_complex:
        return complex_clogf(x)
    elif real_complex_t is double_complex:
        return complex_clog(x)
    else:
        return complex_clogl(x)


cdef real_complex_t sin(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_sinf(x)
    elif real_complex_t is double:
        return math_sin(x)
    elif real_complex_t is long_double:
        return math_sinl(x)
    elif real_complex_t is float_complex:
        return complex_csinf(x)
    elif real_complex_t is double_complex:
        return complex_csin(x)
    else:
        return complex_csinl(x)


cdef real_complex_t sinh(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_sinhf(x)
    elif real_complex_t is double:
        return math_sinh(x)
    elif real_complex_t is long_double:
        return math_sinhl(x)
    elif real_complex_t is float_complex:
        return complex_csinhf(x)
    elif real_complex_t is double_complex:
        return complex_csinh(x)
    else:
        return complex_csinhl(x)


cdef real_complex_t sqrt(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_sqrtf(x)
    elif real_complex_t is double:
        return math_sqrt(x)
    elif real_complex_t is long_double:
        return math_sqrtl(x)
    elif real_complex_t is float_complex:
        return complex_csqrtf(x)
    elif real_complex_t is double_complex:
        return complex_csqrt(x)
    else:
        return complex_csqrtl(x)


cdef real_complex_t tan(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_tanf(x)
    elif real_complex_t is double:
        return math_tan(x)
    elif real_complex_t is long_double:
        return math_tanl(x)
    elif real_complex_t is float_complex:
        return complex_ctanf(x)
    elif real_complex_t is double_complex:
        return complex_ctan(x)
    else:
        return complex_ctanl(x)


cdef real_complex_t tanh(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_tanhf(x)
    elif real_complex_t is double:
        return math_tanh(x)
    elif real_complex_t is long_double:
        return math_tanhl(x)
    elif real_complex_t is float_complex:
        return complex_ctanhf(x)
    elif real_complex_t is double_complex:
        return complex_ctanh(x)
    else:
        return complex_ctanhl(x)
