program main
    use iso_fortran_env, only: real32
    implicit none
    integer :: n = 1000
    call sub1 (n)
end

subroutine sub1 (n)
    use iso_fortran_env, only: real32
    implicit none
    integer, intent(in) :: n
    real(kind=real32) :: a1
    real(kind=real32) :: a2
    real(kind=real32) :: a (n)
    real(kind=real32) :: b (n)
    real(kind=real32) :: c (1000)
    real(kind=real32) :: d (1000)
    real(kind=real32), dimension (:), allocatable :: e, f, g, h
    allocate (e (n))
    allocate (f (n))
    allocate (g (1000))
    allocate (h (1000))
    write(*, '(a, z16)') "address of sub1 explicit shape array a", loc (a)
    write(*, '(z8)') a (1)
    write(*, '(z8)') a (1000)
    write(*, '(a, z16)') "address of sub1 explicit shape array b", loc (b)
    write(*, '(z8)') b (1)
    write(*, '(z8)') b (1000)
    write(*, '(a, z16)') "address of sub1 fixed size array c", loc (c)
    write(*, '(z8)') c (1)
    write(*, '(z8)') c (1000)
    write(*, '(a, z16)') "address of sub1 fixed size array d", loc (d)
    write(*, '(z8)') d (1)
    write(*, '(z8)') d (1000)
    write(*, '(a, z16)') "address of sub1 allocatable array e", loc (e)
    write(*, '(z8)') e (1)
    write(*, '(z8)') e (1000)
    write(*, '(a, z16)') "address of sub1 allocatable array f", loc (f)
    write(*, '(z8)') f (1)
    write(*, '(z8)') f (1000)
    write(*, '(a, z16)') "address of sub1 allocatable array g", loc (g)
    write(*, '(z8)') g (1)
    write(*, '(z8)') g (1000)
    write(*, '(a, z16)') "address of sub1 allocatable array h", loc (h)
    write(*, '(z8)') h (1)
    write(*, '(z8)') h (1000)
    write(*, '(a, z16)') "address of sub1 scalar a1", loc (a1)
    write(*, '(z8)') a1
    write(*, '(a, z16)') "address of sub1 scalar a2", loc (a2)
    write(*, '(z8)') a2
    deallocate (e)
    deallocate (f)
    deallocate (g)
    deallocate (h)
end