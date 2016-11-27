About
=====

CyMath aims to provide basic math routines in Cython. These routines
should be:

- cdef functions to avoid Python overhead
- made generic by using fused types
- GIL-free to allow for easy parallelization.

All modules are extension modules and the functions in them must be
cimported.


Modules
=======

CyMath contains the following modules:

- libm: fused type wrappers for functions in `math.h` and `complex.h`.


Requirements
============

CyMath requires that Cython is installed and that you have C99.


Installation
============

To install CyMath:

- Clone the git repository.
- Run `pip install .` in the top-level `cymath` directory.

To run the tests after installing:

- run `setup.py build_ext -i` in `cymath/tests`
- run `python -c "import tests; tests.run()"`.