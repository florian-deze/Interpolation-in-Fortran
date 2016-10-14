      SUBROUTINE INTERPOLATION(A,B,RES,N,AIRE)
*
      INTEGER N,I,J,K
      DOUBLE PRECISION H, RES(0:N),AIRE,C(0:6),FUNC,A,B,PRIM
      DOUBLE PRECISION RESP, ERR
*
* on verifie que le nombre d'intervalle est un multiple de 6
*
      RESP = PRIM(B) - PRIM(A)
      K=6
      DO WHILE (K.le.N)
        AIRE = 0D0
        H = (B - A) / K
        DO I = 0, K
          RES(I) = FUNC(A + I*H)
        END DO
*
         J = K / 6
         J = J * 6
         IF (J.NE.K) THEN
            WRITE(*,*) ' PAS un multiple de 6'
         ELSE
         
* Initialisation des poids
           C(0) = 41D0 / 840D0
           C(1) = 216D0 / 840D0
           C(2) = 27D0 / 840D0
           C(3) = 272D0 / 840D0
           C(4) = C(2)
           C(5) = C(1)
           C(6) = C(0)

* Calcul de l'aire
           DO I = 1, K/6
             J = 6*I - 6
             AIRE = AIRE + C(0)*RES(J) + C(1)*RES(J+1) + C(2)*RES(J+2)
     $                + C(3)*RES(J+3) + C(4)*RES(J+4) + C(5)*RES(J+5)
     $                + C(6)*RES(J+6)
*             WRITE(*,*)'AIRE',AIRE,I,J
           END DO

           AIRE = AIRE * 6 * H
          
           ERR=ABS((AIRE-RESP)/RESP)
           ERR=-LOG(ERR)/LOG(2D0)
           WRITE(*,*)'',K,ERR
             
         END IF
       K=K+K
       END DO
       
       WRITE(*,*)'RESP	AIRE',RESP,AIRE
       END SUBROUTINE