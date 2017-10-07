#
# Code for generating the wrappers
#
from __future__ import division, print_function, absolute_import

import math
import cmath


REAL_DECLARATION = """\
    float math_{FUNC}f "{FUNC}f"(float)
    double math_{FUNC} "{FUNC}"(double)
    long double math_{FUNC}l "{FUNC}l"(long double)
"""

COMPLEX_DECLARATION = """\
    float complex complex_c{FUNC}f "c{FUNC}f"(float complex)
    double complex complex_c{FUNC} "c{FUNC}"(double complex)
    long double complex complex_c{FUNC}l "c{FUNC}l"(long double complex)
"""

REAL_COMPLEX_FUNC_BODY = """\
cdef real_complex_t {FUNC}(real_complex_t x) nogil:
    if real_complex_t is float:
        return math_{FUNC}f(x)
    elif real_complex_t is double:
        return math_{FUNC}(x)
    elif real_complex_t is long_double:
        return math_{FUNC}l(x)
    elif real_complex_t is float_complex:
        return complex_c{FUNC}f(x)
    elif real_complex_t is double_complex:
        return complex_c{FUNC}(x)
    else:
        return complex_c{FUNC}l(x)
"""

REAL_COMPLEX_TEST_BODY = """\
class Test{CAPFUNC}(unittest.TestCase):

    def test_float(self):
        cdef float x = {REAL_POINT}
        cdef float res = {REAL_RESULT}
        self.assertTrue(allclose(cymath.{FUNC}(x), res))

    def test_double(self):
        cdef double x = {REAL_POINT}
        cdef double res = {REAL_RESULT}
        self.assertTrue(allclose(cymath.{FUNC}(x), res))

    def test_long_double(self):
        cdef long double x = {REAL_POINT}
        cdef long double res = {REAL_RESULT}
        self.assertTrue(allclose(cymath.{FUNC}(x), res))

    def test_float_complex(self):
        cdef float complex x = {COMPLEX_POINT}
        cdef float complex res = {COMPLEX_RESULT}
        self.assertTrue(allclose(cymath.{FUNC}(x), res))

    def test_double_complex(self):
        cdef double complex x = {COMPLEX_POINT}
        cdef double complex res = {COMPLEX_RESULT}
        self.assertTrue(allclose(cymath.{FUNC}(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = {COMPLEX_POINT}
        cdef long double complex res = {COMPLEX_RESULT}
        self.assertTrue(allclose(cymath.{FUNC}(x), res))
"""

# Format is (FUNC, REAL_POINT, COMPLEX_POINT)
REAL_COMPLEX_FUNCS = [
    ("acos", 0.5, 0.5 + 0.5j),
    ("acosh", 1.5, 1.5 + 1.5j),
    ("asin", 0.5, 0.5 + 0.5j),
    ("asinh", 0.5, 0.5 + 0.5j),
    ("atan", 0.5, 0.5 + 0.5j),
    ("atanh", 0.5, 0.5 + 0.5j),
    ("cos", 0.5, 0.5 + 0.5j),
    ("cosh", 0.5, 0.5 + 0.5j),
    ("exp", 0.5, 0.5 + 0.5j),
    ("log", 0.5, 0.5 + 0.5j),
    ("sin", 0.5, 0.5 + 0.5j),
    ("sinh", 0.5, 0.5 + 0.5j),
    ("sqrt", 0.5, 0.5 + 0.5j),
    ("tan", 0.5, 0.5 + 0.5j),
    ("tanh", 0.5, 0.5 + 0.5j)
]


def make_test(f, real_p, complex_p):
    real_res = math.__dict__[f](real_p)
    complex_res = cmath.__dict__[f](complex_p)
    return REAL_COMPLEX_TEST_BODY.format(FUNC=f,
                                         CAPFUNC=f.capitalize(),
                                         REAL_POINT=real_p,
                                         COMPLEX_POINT=complex_p,
                                         REAL_RESULT=real_res,
                                         COMPLEX_RESULT=complex_res)


def main():
    REAL_DECLARATIONS = []
    COMPLEX_DECLARATIONS = []
    REAL_COMPLEX_FUNC_BODIES = []
    REAL_COMPLEX_TEST_BODIES = []
    for f, real_p, complex_p in REAL_COMPLEX_FUNCS:
        REAL_DECLARATIONS.append(REAL_DECLARATION.format(FUNC=f))
        COMPLEX_DECLARATIONS.append(COMPLEX_DECLARATION.format(FUNC=f))
        REAL_COMPLEX_FUNC_BODIES.append(REAL_COMPLEX_FUNC_BODY.format(FUNC=f))
        REAL_COMPLEX_TEST_BODIES.append(make_test(f, real_p, complex_p))
    with open('cymath/cymath.pxi', 'w') as f:
        f.write('cdef extern from "math.h" nogil:\n')
        f.write(''.join(REAL_DECLARATIONS))
        f.write('\n')
        f.write('cdef extern from "complex.h" nogil:\n')
        f.write(''.join(COMPLEX_DECLARATIONS))
        f.write('\n\n')
        f.write('\n\n'.join(REAL_COMPLEX_FUNC_BODIES))
    with open('tests/tests.pxi', 'w') as f:
        f.write('\n\n'.join(REAL_COMPLEX_TEST_BODIES))


if __name__ == '__main__':
    main()
