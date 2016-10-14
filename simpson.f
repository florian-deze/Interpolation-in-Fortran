      SUBROUTINE INTERPOLATION(A,B,RES,N,AIRE)
*
      INTEGER N, PAIRE,I,K
      DOUBLE PRECISION H, RES(0:N),AIRE, PRIM,RESP,ERR,A,B,FUNC
*
* Verification que N est pair
      RESP = PRIM(B) - PRIM(A)
      K=2
      DO WHILE (K.le.N)
        AIRE = 0D0
        H = (B-A) / K
        DO I = 0, K
          RES(I) = FUNC(A + I*H)
        END DO
        
        PAIRE = K/2
        PAIRE = PAIRE * 2
        IF (PAIRE.NE.K) THEN
          WRITE(*,*) 'N est impair, la methode est impossible'
          STOP
        ELSE
          PAIRE = PAIRE/2
          AIRE = 0D0
* DE RES(1) a RES(N-2)
          DO I =1, PAIRE
            AIRE = AIRE + 4*RES(2*I - 1) + 2*RES(2*I)
          END DO
          AIRE = AIRE + RES(0) - RES(K)
          AIRE = H * AIRE/3
*          WRITE(*,*) 'AIRE',AIRE
        END IF
        
        ERR = ABS((AIRE - RESP)/RESP)
        ERR = -LOG(ERR)/LOG(2D0)
        WRITE(*,*)'',K,ERR
      K=K+K
      END DO
      WRITE(*,*) 'fonction primitive P(B)-P(A)=',RESP
      END SUBROUTINE
          
