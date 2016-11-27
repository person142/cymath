import unittest

from cymath cimport libm
from cymath.libm cimport (
    long_double,
    float_complex, double_complex, long_double_complex,
    real_complex_t
)

cdef extern from "math.h" nogil:
    float fabsf(float)
    double fabs(double)
    long double fabsl(long double)

cdef extern from "complex.h" nogil:
    float cabsf(float complex)
    double cabs(double complex)
    long double cabsl(long double complex)

include "tests.pxi"


def allclose(real_complex_t res, real_complex_t std):
    if real_complex_t is float:
        return fabsf(res - std) < 1e-3*fabsf(std)
    elif real_complex_t is double:
        return fabs(res - std) < 1e-3*fabs(std)
    elif real_complex_t is long_double:
        return fabsl(res - std) < 1e-3*fabsl(std)
    elif real_complex_t is float_complex:
        return cabsf(res - std) < 1e-3*cabsf(std)
    elif real_complex_t is double_complex:
        return cabs(res - std) < 1e-3*cabs(std)
    else:
        return cabsl(res - std) < 1e-3*cabsl(std)


class TestAbs(unittest.TestCase):

    def test_double(self):
        cdef double x = -1.0
        self.assertTrue(allclose(libm.abs(-1.0), 1.0))

    def test_double_complex(self):
        cdef double complex x = 1.0 + 1.0j
        self.assertTrue(allclose(libm.abs(1.0 + 1.0j), 1.4142135623730951))


class TestArg(unittest.TestCase):

    def test_double_complex(self):
        cdef double complex x = 1.0j
        self.assertTrue(allclose(libm.arg(x), 1.5707963267948966))


def run():
    unittest.main(module='tests')
