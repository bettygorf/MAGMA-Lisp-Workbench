980   J = RADIX
609   IF(CXTX(J).LT.O) GO TO 610
      IF(J.EQ.LIB) GO TO 6758
      J = LIST(J)
      GO TO 609
6758  IF(LIST(LIST(LIB)).LT.O) KGBC = 1
      RETURN
C
C        ALMENO UN MONDO E' DEFUNTO. GARBAGE.
C     AZZERAMENTO DEI CXTXS,SONS,BROTHERS,FATHERS DEI MONDI DEFUNTI.
C     AZZERAMENTO LOCAZIONE NELLA TABELLA CHIAVI DI ACCESSO DEL
C     MONDO DEFUNTO. GARBAGE MONDI UCCISI NELLA TABELLA ALBERO DEI
C     CONTESTI
C
C
610   K = 0
      I = RADIX
1300  I1 = LIST(I)
      IF(CXTX(I).GT.0) GO TO 100
      J = LIST(LIB)
      LIST(LIB) = I
      LIST(I) = J
      CXTX(I) = 0
      FIRSTB(I) = 0
      PADRE(I) = 0 
      FIRSTS(I) = 0
105   IF(I.EQ.LIB) GO TO 350
      I = I1
      GO TO 1300
100   IF(K.EQ.O) GO TO 140
      LIST(K) = I
140   K = I
      GO TO 105
C
C     INIZIA DA QUI LA RISTRUTTURAZIONE DELL' ALBERO DEI CONTESTI.
C
350   IF(K.NE.LIB) LIST (K) = LIB
      LIB = K
C
C     DOPO IL COLLETTAMENTO DI TUTTI I MONDI VIVI SI PASSA ALLA
C     FASE DI SISTEMAZIONE DELLA R E DELLA S.
C
401   KEY2 = RRADIX
      PILA(1) = -RRADIX
      R(RRADIX) = 1
      J = 1
      R1 = 1
320   IF(FIRSTS(KEY2).EQ.0) GO TO 321
      KEY2 = FIRSTS(KEY2)
      IF(KEY2.EQ.0) GO TO 321
313   J = J+1
      PILA(J) = KEY2
      IF(FIRSTB(KEY2).EQ.0) GO TO 319
      KEY2 = FIRSTB(KEY2)
      GO TO 313