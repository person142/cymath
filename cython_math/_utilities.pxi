class TestAcos(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 1.0471975511965976
        self.assertTrue(allclose(cython_math.acos(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 1.0471975511965976
        self.assertTrue(allclose(cython_math.acos(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 1.0471975511965976
        self.assertTrue(allclose(cython_math.acos(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (1.1185178796437059-0.5306375309525179j)
        self.assertTrue(allclose(cython_math.acos(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (1.1185178796437059-0.5306375309525179j)
        self.assertTrue(allclose(cython_math.acos(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (1.1185178796437059-0.5306375309525179j)
        self.assertTrue(allclose(cython_math.acos(x), res))


class TestAcosh(unittest.TestCase):

    def test_float(self):
        cdef float x = 1.5
        cdef float res = 0.9624236501192069
        self.assertTrue(allclose(cython_math.acosh(x), res))

    def test_double(self):
        cdef double x = 1.5
        cdef double res = 0.9624236501192069
        self.assertTrue(allclose(cython_math.acosh(x), res))

    def test_long_double(self):
        cdef long double x = 1.5
        cdef long double res = 0.9624236501192069
        self.assertTrue(allclose(cython_math.acosh(x), res))

    def test_float_complex(self):
        cdef float complex x = (1.5+1.5j)
        cdef float complex res = (1.44973434958536+0.8403951088416709j)
        self.assertTrue(allclose(cython_math.acosh(x), res))

    def test_double_complex(self):
        cdef double complex x = (1.5+1.5j)
        cdef double complex res = (1.44973434958536+0.8403951088416709j)
        self.assertTrue(allclose(cython_math.acosh(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (1.5+1.5j)
        cdef long double complex res = (1.44973434958536+0.8403951088416709j)
        self.assertTrue(allclose(cython_math.acosh(x), res))


class TestAsin(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.5235987755982988
        self.assertTrue(allclose(cython_math.asin(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.5235987755982988
        self.assertTrue(allclose(cython_math.asin(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.5235987755982988
        self.assertTrue(allclose(cython_math.asin(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.45227844715119064+0.5306375309525179j)
        self.assertTrue(allclose(cython_math.asin(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.45227844715119064+0.5306375309525179j)
        self.assertTrue(allclose(cython_math.asin(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.45227844715119064+0.5306375309525179j)
        self.assertTrue(allclose(cython_math.asin(x), res))


class TestAsinh(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.4812118250596034
        self.assertTrue(allclose(cython_math.asinh(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.4812118250596034
        self.assertTrue(allclose(cython_math.asinh(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.4812118250596034
        self.assertTrue(allclose(cython_math.asinh(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.5306375309525179+0.45227844715119064j)
        self.assertTrue(allclose(cython_math.asinh(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.5306375309525179+0.45227844715119064j)
        self.assertTrue(allclose(cython_math.asinh(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.5306375309525179+0.45227844715119064j)
        self.assertTrue(allclose(cython_math.asinh(x), res))


class TestAtan(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.46364760900080615
        self.assertTrue(allclose(cython_math.atan(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.46364760900080615
        self.assertTrue(allclose(cython_math.atan(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.46364760900080615
        self.assertTrue(allclose(cython_math.atan(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.5535743588970452+0.40235947810852507j)
        self.assertTrue(allclose(cython_math.atan(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.5535743588970452+0.40235947810852507j)
        self.assertTrue(allclose(cython_math.atan(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.5535743588970452+0.40235947810852507j)
        self.assertTrue(allclose(cython_math.atan(x), res))


class TestAtanh(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.5493061443340549
        self.assertTrue(allclose(cython_math.atanh(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.5493061443340549
        self.assertTrue(allclose(cython_math.atanh(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.5493061443340549
        self.assertTrue(allclose(cython_math.atanh(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.40235947810852507+0.5535743588970452j)
        self.assertTrue(allclose(cython_math.atanh(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.40235947810852507+0.5535743588970452j)
        self.assertTrue(allclose(cython_math.atanh(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.40235947810852507+0.5535743588970452j)
        self.assertTrue(allclose(cython_math.atanh(x), res))


class TestCos(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.8775825618903728
        self.assertTrue(allclose(cython_math.cos(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.8775825618903728
        self.assertTrue(allclose(cython_math.cos(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.8775825618903728
        self.assertTrue(allclose(cython_math.cos(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.9895848833999199-0.24982639750046154j)
        self.assertTrue(allclose(cython_math.cos(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.9895848833999199-0.24982639750046154j)
        self.assertTrue(allclose(cython_math.cos(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.9895848833999199-0.24982639750046154j)
        self.assertTrue(allclose(cython_math.cos(x), res))


class TestCosh(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 1.1276259652063807
        self.assertTrue(allclose(cython_math.cosh(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 1.1276259652063807
        self.assertTrue(allclose(cython_math.cosh(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 1.1276259652063807
        self.assertTrue(allclose(cython_math.cosh(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.9895848833999199+0.24982639750046154j)
        self.assertTrue(allclose(cython_math.cosh(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.9895848833999199+0.24982639750046154j)
        self.assertTrue(allclose(cython_math.cosh(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.9895848833999199+0.24982639750046154j)
        self.assertTrue(allclose(cython_math.cosh(x), res))


class TestExp(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 1.6487212707001282
        self.assertTrue(allclose(cython_math.exp(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 1.6487212707001282
        self.assertTrue(allclose(cython_math.exp(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 1.6487212707001282
        self.assertTrue(allclose(cython_math.exp(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (1.4468890365841693+0.7904390832136149j)
        self.assertTrue(allclose(cython_math.exp(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (1.4468890365841693+0.7904390832136149j)
        self.assertTrue(allclose(cython_math.exp(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (1.4468890365841693+0.7904390832136149j)
        self.assertTrue(allclose(cython_math.exp(x), res))


class TestLog(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = -0.6931471805599453
        self.assertTrue(allclose(cython_math.log(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = -0.6931471805599453
        self.assertTrue(allclose(cython_math.log(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = -0.6931471805599453
        self.assertTrue(allclose(cython_math.log(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (-0.3465735902799726+0.7853981633974483j)
        self.assertTrue(allclose(cython_math.log(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (-0.3465735902799726+0.7853981633974483j)
        self.assertTrue(allclose(cython_math.log(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (-0.3465735902799726+0.7853981633974483j)
        self.assertTrue(allclose(cython_math.log(x), res))


class TestSin(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.479425538604203
        self.assertTrue(allclose(cython_math.sin(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.479425538604203
        self.assertTrue(allclose(cython_math.sin(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.479425538604203
        self.assertTrue(allclose(cython_math.sin(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.5406126857131534+0.4573041531842493j)
        self.assertTrue(allclose(cython_math.sin(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.5406126857131534+0.4573041531842493j)
        self.assertTrue(allclose(cython_math.sin(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.5406126857131534+0.4573041531842493j)
        self.assertTrue(allclose(cython_math.sin(x), res))


class TestSinh(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.5210953054937474
        self.assertTrue(allclose(cython_math.sinh(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.5210953054937474
        self.assertTrue(allclose(cython_math.sinh(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.5210953054937474
        self.assertTrue(allclose(cython_math.sinh(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.4573041531842493+0.5406126857131534j)
        self.assertTrue(allclose(cython_math.sinh(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.4573041531842493+0.5406126857131534j)
        self.assertTrue(allclose(cython_math.sinh(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.4573041531842493+0.5406126857131534j)
        self.assertTrue(allclose(cython_math.sinh(x), res))


class TestSqrt(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.7071067811865476
        self.assertTrue(allclose(cython_math.sqrt(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.7071067811865476
        self.assertTrue(allclose(cython_math.sqrt(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.7071067811865476
        self.assertTrue(allclose(cython_math.sqrt(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.7768869870150187+0.3217971264527913j)
        self.assertTrue(allclose(cython_math.sqrt(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.7768869870150187+0.3217971264527913j)
        self.assertTrue(allclose(cython_math.sqrt(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.7768869870150187+0.3217971264527913j)
        self.assertTrue(allclose(cython_math.sqrt(x), res))


class TestTan(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.5463024898437905
        self.assertTrue(allclose(cython_math.tan(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.5463024898437905
        self.assertTrue(allclose(cython_math.tan(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.5463024898437905
        self.assertTrue(allclose(cython_math.tan(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.40389645531602586+0.5640831412674986j)
        self.assertTrue(allclose(cython_math.tan(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.40389645531602586+0.5640831412674986j)
        self.assertTrue(allclose(cython_math.tan(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.40389645531602586+0.5640831412674986j)
        self.assertTrue(allclose(cython_math.tan(x), res))


class TestTanh(unittest.TestCase):

    def test_float(self):
        cdef float x = 0.5
        cdef float res = 0.46211715726000974
        self.assertTrue(allclose(cython_math.tanh(x), res))

    def test_double(self):
        cdef double x = 0.5
        cdef double res = 0.46211715726000974
        self.assertTrue(allclose(cython_math.tanh(x), res))

    def test_long_double(self):
        cdef long double x = 0.5
        cdef long double res = 0.46211715726000974
        self.assertTrue(allclose(cython_math.tanh(x), res))

    def test_float_complex(self):
        cdef float complex x = (0.5+0.5j)
        cdef float complex res = (0.5640831412674986+0.40389645531602586j)
        self.assertTrue(allclose(cython_math.tanh(x), res))

    def test_double_complex(self):
        cdef double complex x = (0.5+0.5j)
        cdef double complex res = (0.5640831412674986+0.40389645531602586j)
        self.assertTrue(allclose(cython_math.tanh(x), res))

    def test_long_double_complex(self):
        cdef long double complex x = (0.5+0.5j)
        cdef long double complex res = (0.5640831412674986+0.40389645531602586j)
        self.assertTrue(allclose(cython_math.tanh(x), res))
