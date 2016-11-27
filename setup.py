from distutils.core import setup, Extension
from Cython.Build import cythonize


ext_modules = [
    Extension("cymath.libm",
              ["cymath/libm.pyx"]),
]

setup(
    name="CyMath",
    description="Math utilities for Cython",
    author="Josh Wilson",
    ext_modules=cythonize(ext_modules),
    packages=["cymath"],
    package_data={"cymath": ["__init__.pxd",
                             "libm.pxd"]}
)
