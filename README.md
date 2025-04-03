# Skillshare: Finding uninitialised variables in Fortran

## Why care about uninitialised variables?

- Can result in a random value at an address in memory (garbage value) being loaded into an unintialised variable.
- Often leads to non-reproducible behaviour of the program.
- Often visible when changing systems or compilers.
- Has a corrosive effect via the requirement to maintain legacy software/environments to preserve the so-called “correct” functioning of some application

```fortran
! src/examples/ex1.F90
program main
    use iso_fortran_env, only: real32
    implicit none
    real(kind=real32) :: d
    print *, d
    write(*, '(z8)') d ! as hexadecimal
end program main
```

Compiling the above program and running it three times:

```
gfortran src/ex1.F90 && for run in {1..3}; do ./a.out; done
```

Outputs:

```
  -1.35553568E+33
F685AA88
   2.16538873E-35
 5E6437D
   8.91414933E+30
72E10657
```







## Common approaches for detecting use of uninitialised data:

### ifort

- `-check uninit`
- `-ftrapuv`

----

`-check uninit`

- Enables run-time checking for uninitialized variables. **Only local scalar variables  of  intrinsic  type  INTEGER, REAL, COMPLEX, and LOGICAL without the SAVE attribute are checked.**
- Unreliable and gives false positives (see `ex2.F90`)

`-ftrapuv`

- Initialises stack local variables to an unusual value to aid error detection.
- Floating point variables are initialised to signaling not a number (SNAN) (i.e. enables `-init snan`)
- Must be used in combination with `-fpe0` to produce exceptions.

---

**What about arrays?**

See `ex3.F90`.

---

### ifx

- LLVM Memory Sanitiser introduced in `-check uninit` for ifx version 2023.2.0.
  - Similar to valgrind.
  - Hard to diagnose output in complex programs.

----

### gfortran

- `-fcheck=all`
- `-finit-real=snan -ffpe-trap=invalid`

---











## Valgrind?

















## Using DDT's memory debugging library

- DDT is a debugger for high perfomance computing programs: https://www.linaroforge.com/linaro-ddt/
- Proven to be the most useful in detecting uninitialised variables.



















## Conclusion:

- There is yet to be a perfect tool for finding all cases of uninitialised variable usage.
- Compilers are continually improving their capability for debugging uninitialised variables.
  - Best to always use the latest compiler when possible.









**Resources:**

- https://www.nas.nasa.gov/hecc/assets/pdf/training/UnInit_Fix_your_code_2012_10_31.pdf
  - Recording can be found at: https://www.nas.nasa.gov/hecc/support/past_webinars.html

- LLVM Memory Sanitiser: https://www.intel.com/content/www/us/en/developer/videos/townhall-with-intel-fortran-compiler-developers.html
