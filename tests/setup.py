from distutils.core import setup, Extension
from Cython.Build import cythonize


ext_modules = [
    Extension("tests",
              ["tests.pyx"]),
]

setup(
    ext_modules=cythonize(ext_modules),
)

