About
=====

CyMath provides wrappers to `libm` to be used from Cython. The
wrappers are:

- cdef functions to avoid Python overhead
- made generic by using fused types
- GIL-free to allow for easy parallelization.

Requirements
============

CyMath requires that Cython is installed and that the C compiler being
used supports C99.

Installation
============

To install CyMath:

- Clone the git repository.
- Run `pip install .` in the top-level `cymath` directory.

To run the tests after installing:

- run `setup.py build_ext -i` in `cymath/tests`
- run `python -c "import tests; tests.run()"`.

Use
===

A basic example of use is:

```
cimport cymath

cdef double x = 1.0
cdef double y
cdef double complex z = 1.0 + 1.0j
cdef double complex w

with nogil:
    y = cymath.sin(x)
    w = cymath.sin(z)

print("y, w = {}, {}".format(y, w))
```