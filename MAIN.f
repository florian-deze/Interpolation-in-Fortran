      PROGRAM MAIN
*
      IMPLICIT NONE
      INTEGER N
      PARAMETER (N=600)
      DOUBLE PRECISION A,B,RES(0:N),AIRE
      PARAMETER(A=1)
      PARAMETER(B=5)
*
      WRITE(*,*)'     NBSTEPS        NB BITS EXACT'
      CALL INTERPOLATION(A,B,RES,N,AIRE)
      WRITE(*,*)''
      WRITE(*,*)'-------------- Aire calculee ---------------'
      WRITE(*,*)'Aire :     ',AIRE
      END PROGRAM
