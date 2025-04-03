#!/bin/sh

module purge
mkdir -p bin

# src/ex1.F90

# ifort (19.0.3.199)
module load intel-compiler/2019.3.199
ifort -O0 -g -traceback                -o bin/ex1-ifort-2019              src/ex1.F90
ifort -O0 -g -traceback -check uninit  -o bin/ex1-ifort-2019-check-uninit src/ex1.F90
ifort -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex1-ifort-2019-ftrapuv      src/ex1.F90
module unload intel-compiler/2019.3.199

# ifort (2021.10.0)
module load intel-compiler/2021.10.0
ifort -O0 -g -traceback                -o bin/ex1-ifort-2021              src/ex1.F90
ifort -O0 -g -traceback -check uninit  -o bin/ex1-ifort-2021-check-uninit src/ex1.F90
ifort -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex1-ifort-2021-ftrapuv      src/ex1.F90
module unload intel-compiler/2021.10.0

# ifx (2025.0.4)
module load intel-compiler-llvm/2025.0.4
ifx -O0 -g -traceback                -o bin/ex1-ifx-2025              src/ex1.F90
ifx -O0 -g -traceback -check uninit  -o bin/ex1-ifx-2025-check-uninit src/ex1.F90
ifx -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex1-ifx-2025-ftrapuv      src/ex1.F90
module unload intel-compiler-llvm/2025.0.4

# gfortran (14.2.0)
module load gcc/14.2.0
gfortran -O0 -g -fbacktrace                                     -o bin/ex1-gfortran-14                                   src/ex1.F90
gfortran -O0 -g -fbacktrace -fcheck=mem                         -o bin/ex1-gfortran-14-fcheck-mem                        src/ex1.F90
gfortran -O0 -g -fbacktrace -finit-real=snan -ffpe-trap=invalid -o bin/ex1-gfortran-14-finit-real-snan-fppe-trap-invalid src/ex1.F90
module unload gcc/14.2.0

# src/ex2.F90

# ifort (19.0.3.199)
module load intel-compiler/2019.3.199
ifort -O0 -g -traceback                -o bin/ex2-ifort-2019              src/ex2.F90
ifort -O0 -g -traceback -check uninit  -o bin/ex2-ifort-2019-check-uninit src/ex2.F90
ifort -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex2-ifort-2019-ftrapuv      src/ex2.F90
module unload intel-compiler/2019.3.199

# ifort (2021.10.0)
module load intel-compiler/2021.10.0
ifort -O0 -g -traceback                -o bin/ex2-ifort-2021              src/ex2.F90
ifort -O0 -g -traceback -check uninit  -o bin/ex2-ifort-2021-check-uninit src/ex2.F90
ifort -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex2-ifort-2021-ftrapuv      src/ex2.F90
module unload intel-compiler/2021.10.0

# ifx (2025.0.4)
module load intel-compiler-llvm/2025.0.4
ifx -O0 -g -traceback                -o bin/ex2-ifx-2025              src/ex2.F90
ifx -O0 -g -traceback -check uninit  -o bin/ex2-ifx-2025-check-uninit src/ex2.F90
ifx -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex2-ifx-2025-ftrapuv      src/ex2.F90
module unload intel-compiler-llvm/2025.0.4

# gfortran (14.2.0)
module load gcc/14.2.0
gfortran -O0 -g -fbacktrace                                     -o bin/ex2-gfortran-14                                   src/ex2.F90
gfortran -O0 -g -fbacktrace -fcheck=mem                         -o bin/ex2-gfortran-14-fcheck-mem                        src/ex2.F90
gfortran -O0 -g -fbacktrace -finit-real=snan -ffpe-trap=invalid -o bin/ex2-gfortran-14-finit-real-snan-fppe-trap-invalid src/ex2.F90
module unload gcc/14.2.0

# src/ex3.F90

# ifort (19.0.3.199)
module load intel-compiler/2019.3.199
ifort -O0 -g -traceback                -o bin/ex3-ifort-2019              src/ex3.F90
ifort -O0 -g -traceback -check uninit  -o bin/ex3-ifort-2019-check-uninit src/ex3.F90
ifort -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex3-ifort-2019-ftrapuv      src/ex3.F90
module unload intel-compiler/2019.3.199

# ifort (2021.10.0)
module load intel-compiler/2021.10.0
ifort -O0 -g -traceback                -o bin/ex3-ifort-2021              src/ex3.F90
ifort -O0 -g -traceback -check uninit  -o bin/ex3-ifort-2021-check-uninit src/ex3.F90
ifort -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex3-ifort-2021-ftrapuv      src/ex3.F90
module unload intel-compiler/2021.10.0

# ifx (2025.0.4)
module load intel-compiler-llvm/2025.0.4
ifx -O0 -g -traceback                -o bin/ex3-ifx-2025              src/ex3.F90
ifx -O0 -g -traceback -check uninit  -o bin/ex3-ifx-2025-check-uninit src/ex3.F90
ifx -O0 -g -traceback -ftrapuv -fpe0 -o bin/ex3-ifx-2025-ftrapuv      src/ex3.F90
module unload intel-compiler-llvm/2025.0.4

# gfortran (14.2.0)
module load gcc/14.2.0
gfortran -O0 -g -fbacktrace                                     -o bin/ex3-gfortran-14                                   src/ex3.F90
gfortran -O0 -g -fbacktrace -fcheck=mem                         -o bin/ex3-gfortran-14-fcheck-mem                        src/ex3.F90
gfortran -O0 -g -fbacktrace -finit-real=snan -ffpe-trap=invalid -o bin/ex3-gfortran-14-finit-real-snan-fppe-trap-invalid src/ex3.F90
module unload gcc/14.2.0
