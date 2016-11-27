from distutils.core import setup, Extension
from Cython.Build import cythonize


DESCRIPTION = """\
Cython math provides fused-type wrappers for C99 math.h and complex.h
functions.
"""

ext_modules = [
    Extension("cymath.libm",
              ["cymath/libm.pyx"]),
]

setup(
    name="cymath",
    description=DESCRIPTION,
    author="Josh Wilson",
    ext_modules=cythonize(ext_modules),
    packages=["cymath"],
    package_data={"cymath": ["__init__.pxd",
                             "libm.pxd"]}
)
