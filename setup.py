from distutils.core import setup, Extension
from Cython.Build import cythonize


ext_modules = [
    Extension("cython_math.cython_math",
              ["cython_math/cython_math.pyx"]),
    Extension("cython_math._utilities",
              ["cython_math/_utilities.pyx"])
]

setup(
    ext_modules = cythonize(ext_modules)
)
