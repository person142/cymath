from distutils.core import setup, Extension
from distutils.sysconfig import get_python_lib
from Cython.Build import cythonize


ext_modules = [
    Extension("cymath", ["cymath/cymath.pyx"]),
]

setup(
    name='CyMath',
    version='0.0',
    description='Wrappers to `libm` for Cython',
    author='Josh Wilson',
    ext_modules=cythonize(ext_modules),
    data_files=[(get_python_lib(), ['cymath/cymath.pxd'])],
)
