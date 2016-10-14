# Interpolation-in-Fortran
Implementation of Interpolation technics in Fortran, with optimize procedure. The algorithm use in this project are Trapeze, Simpson and Weddle.

Compilation methode:
Example:
gfortran -Wall -fimplicit-none -fdefault-real-8 MAIN.f weddle.f exemple6_1.f exemple6_2.f

You can change weddle by Simpson or Trapeze, and example6_1 and example6_2 by other examples, always in pairs.
It means you cannot use example2_1 and example3_2 at the same time. The first number have to be the same.

In each example, you have a function in Fortran with a different polynomial degree.
