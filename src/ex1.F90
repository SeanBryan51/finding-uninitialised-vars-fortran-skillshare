! src/examples/ex1.F90
program main
    use iso_fortran_env, only: real32
    implicit none
    real(kind=real32) :: d
    print *, d
    write(*, '(z8)') d ! as hexadecimal
end program main
