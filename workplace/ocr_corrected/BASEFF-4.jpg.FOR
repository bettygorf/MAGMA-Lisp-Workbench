NEVALV = ARGF (2)
ENTRY SETQQQ:
(PUNTO INGRESSO 29)
ENTRY SETQQQ
C
IF (ARG1/NTYPEE. NE .ATOMT) CALL ERROF (18)
TEMP = BPOINT
IF (LASTAP. NE.O) GOTO 7
SCTT=BLP (NAPPOI) /UNNO
51
IF (TEMP.EQ.SCTT) GOTO 7
IF (VAR (TEMP) .NE. ARG1) GOTO 53
BIND (TEMP) =NEVALV
GOTO 7680 1
53
TEMP=BBP (TEMP)
GOTO 51
C
LOOPSET
7
IF (TEMP.NE.O) GO TO 8
CALL ALRVLW (NEVALV, VALUE (MOD ( ARG 1, NTYPEE) ) )
GOTO 76801
8
IF (VAR (TEMP) . NE .AUG 1) GO TO 9
CALL ALRVLW (NEVALV, BIND (TEMP) )
GOTO 7680 1
9
TEMP = BBP (TEMP)
GO TO 7
C
C
ENTLAB (34) INDIC = 15
* PUTD *
34
CALL PUTDF (ARGF (1) , ARGF (2) , ARGF (3) )
GOTO 7680 1
C
C
C
ENTLAB (35) INDIC = 16
GETD
*
C
35
ARG1 = ARGF (1)
IF (FTYPE (ARG1) .NE.ATOMT) CALL ERROP (18)
ARG 2 = ARGF (2)
IF (ARG2.EQ.NIL) GO TO 891
IF (FTYPE (ARG2) .NE .CXTT) CALL ERROF (21)
DUMMY = ARG2
CALL RINCA (DUMMY, UNO, KEYFOU)
IF (KEYFOU .LE.0) CALL ERROF (22)
A AKL = AAK
AAK = KEY FOU
NEVALV = ALRVLR (PDEF (ARG1) )
AAK = AAKL
GO TO 892
891
NEVALV = ALRVLR (FDEF (ARG1) )
892
DUMMY=NEVALV/NTYPEE
IF (DUMMY .EQ. NNAMBD) GOTO 10
IF (DUMMY. EQ. NLAMBD) GOTO 10
GOTO 76801
10
NEVALV=MOD (NEVALV, NTYPEE)
GOTO 76801
C ******
ENTRY
GETPF
****
ENTRY
GETPF
