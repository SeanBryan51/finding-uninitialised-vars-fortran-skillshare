! src/examples/ex2.F90
program main
    use iso_fortran_env, only: real32
    implicit none
    real(kind=real32) :: d
    call toto(d)
    print *, d
    write(*, '(z8)') d
end program main

subroutine toto(d)
    use iso_fortran_env, only: real32
    implicit none
    real(kind=real32) :: d
    print *, d
    write(*, '(z8)') d
end subroutine toto