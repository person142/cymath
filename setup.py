from distutils.core import setup, Extension
from Cython.Build import cythonize


DESCRIPTION = """\
Cython math provides fused-type wrappers for C99 math.h and complex.h
functions.
"""

ext_modules = [
    Extension("cython_math.libm",
              ["cython_math/libm.pyx"]),
]

setup(
    name="Cython Math",
    description=DESCRIPTION,
    author="Josh Wilson",
    ext_modules=cythonize(ext_modules),
    packages=["cython_math"],
    package_data={"cython_math": ["__init__.pxd",
                                  "libm.pxd"]}
)
