       
      SUBROUTINE RDHDR(IUNIT,IRATE,SCALE,BIAS,NPARMS,NPERCYC,CYCTIME,           �      
     +NREC,NWORDS,IARRAY,NHDR,IFLAG)                                            �      
C                                                                               �      
C** SUBROUTINE HEADER READS THE HEADER FILE THEN PRINTS HEADER                  �      
C   INFORMATION                                                                 �      
C                                                                               �      
C  *** WRITTEN BY KENT KRUMVIEDA, MODIFIED BY MIKE DANIELS                      �      
C    IUNIT- LOGICAL UNIT NUMBER OF THE INPUT TAPE                               �      
C    IRATE- STORES THE RATES OF THE RESPECTIVE PARAMETERS                       �      
C    SCALE- STORES THE RESPECTIVE SCALES OF THE PARAMETERS                      �      
C    BIAS- STORES THE RESPECTIVE BIASES OF THE PARAMETERS                       �      
C    NPARMS- STORES THE NUMBER OF PARAMETERS                                    �      
C    NPERCYC- THE NUMBER OF WORDS IN A LOGICAL RECORD                           �      
C    CYCTIME- WILL EQUAL 1. TO INDICATE ONE SECOND                              �      
C    NREC- STORES THE NUMBER OF LOGICAL RECORDS PER PHYSICAL RECORDS            �      
C    NWORDS- NUMBER OF WORDS IN A PHYSICAL RECORD                               �      
C    IARRAY- THE ARRAY TO HOLD ONE HEADER RECORD                                �      
C    NHDR- NUMBER OF FILES IN THE HEADER                                        �      
C    IFLAG- IF EQUAL TO 2, A PARITY ERROR SENSED                                �      
      COMMON /LOCATN/ LOC(500)                                                  �      
      COMMON /BITS/ IWDSZ,LOGBIT,DATLOG,NFSTBT(500),NBITS(500)                  �      
      COMMON /LOGREC/ NPREC,RARRAY(15000)                                       �      
      DIMENSION NAMVAR(500),UNITS(500),PROJCT(5),                               �      
     +          IARRAY(1),NDUMMY(10),MON(1),DAY(1),YRR(1),                      �      
     +          HR(1),MIN(1),SEC(1),BGSNP(3),EDSNP(3),MCHINE(1),                �      
     +          TITLE(500,5),IRATE(1),BIAS(1),SCALE(1)                          �      
      DATA NHDLOG/6HHDRLOG/, NHDSIZ/6HHDRSIZ/, NDTLOG/6HDATLOG/,                �      
     1     NDTSIZ/6HDATSIZ/, NLGBIT/6HLOGBIT/, NLETV /6HLETVAR/,                �      
     2     NAPPV /6HAPPVAR/, NORDV /6HORDVAR/                                   �      
      DATA IWORD /64/                                                           �      
      INTEGER HDRLOG,HDRSIZ,DATLOG,DATSIZ,DAY,YRR,TITLE,UNITS                   �      
      IFLAG=0                                                                   �      
 1000 FORMAT(2X,10A8)                                                           �      
 1010 FORMAT( 9X,I4)                                                            �      
 1015 FORMAT(9X,I6)                                                             �      
 1020 FORMAT( 9X,I6)                                                            �      
C1030 FORMAT(5X,7(2X,A8))                                                       �      
 1040 FORMAT(53X,I4)                                                            �      
C1050 FORMAT('  HEADER REC NO. ',2I5,' TH TIME ORDVAR ENCOUNTERED ')            �      
 1060 FORMAT(21X,F7.1,1X,F7.1,4X,I3,1X,I6,12X,A8)                               �      
 1070 FORMAT(4X,'I',7X,'LOC',4X,'NFSTBT',3X,'RATE',12X,'TITLE',27X,             �      
     1'NAME',3X,'UNITS',9X,'SCALE',7X,'BIAS')                                   �      
 1080 FORMAT(2X,I3,3X,I6,3X,I6,3X,I4,3X,5A8,A8,3X,A8,'  (N/',F7.1,              �      
     1') - ',F7.1)                                                              �      
 1090 FORMAT(11X,5A8)                                                           �      
 2000 FORMAT(12X,A2)                                                            �       2010 FORMAT(17X,A3)                                                                  �    
 2020 FORMAT(23X,A2)                                                            �     
 2030 FORMAT(18X,A2)                                                            �     
 2040 FORMAT(24X,A2)                                                            �     
 2050 FORMAT(12X,A8)                                                            �     
 2060 FORMAT(25X,A8)                                                            �     
 2070 FORMAT(38X,A8)                                                            �     
 2080 FORMAT(11X,A4)                                                            �     
 2900 FORMAT(//,' EOF SENSED ON HEADER FILE REC. NO.',I8,//)                    �     
 3000 FORMAT(/,' PARITY ERROR SENSED ON HEADER FILE REC. NO.',I8,/)             �     
 3010 FORMAT(11X,A8)                                                            �     
 3020 FORMAT(///,2X,5A8,/,2X,'THIS FILE IS ALL OR PART OF THE TIME              �     
     1PERIOD ',A8,2X,A8,2X,A8,'   TO   ',A8,2X,A8,2X,A8,                        �     
     2/,2X,'DESCRIPTION OF TAPE  : ',/,10X,'HEADER FILE --',                    �     
     3I6,' BITS (80 ASCII CHARACTERS) PER LOGICAL RECORD',                      �     
     4/,24X,I6,' LOGICAL HEADER RECORDS PER PHYSICAL RECORD',                   �     
     5/,24X,I6,' BITS PER PHYSICAL HEADER RECORD',                              �     
     6/,12X,'DATA FILE --',I6,' BITS PER LOGICAL DATA RECORD',                  �     
     7/,24X,I6,' LOGICAL DATA RECORDS PER PHYSICAL RECORD',                     �     
     8/,24X,I6,' BITS PER PHYSICAL DATA RECORD')                                �     
 3025 FORMAT(2X,'PROJECT FLIGHT DATE ',A2,A3,A2,                                �     
     1/,2X,'PROJECT FLIGHT TIME ',A2,2X,A2,2X,A2,                               �     
     2/,2X,'MACHINE = ',A4,                                                     �     
     3/,2X,I4,' PARAMETERS WERE SAVED AT THEIR RESPECTIVE RATES',               �     
     4/,2X,I4,' SAMPLES WERE SCALED INTO ',I2,' BIT INTEGER WORDS.')            �     
 3030 FORMAT  (2X,'METHOD OF SCALING -- A BIAS BIAS WAS ADDED TO EACH SA        �     
     1MPLE OF EACH PARAMETER TO ELIMINATE',                                     �     
     2/,2X,'ANY NEGATIVE VALUES.  THE BIASED SAMPLE WAS THE MULTIPLIED B        �     
     3Y SCALE TO INSURE THE',                                                   �     
     4/,2X,'PROPER NUMBER OF DECIMAL PLACES WERE SAVED.  THE RECORD MAY         �     
     5BE DECODED BY RIGHT',                                                     �     
     6/,2X,'JUSTIFYING ',I2,' BITS AT A TIME AND REVERSING THE ABOVE SCA        �     
     7LING PROCESS.  AS EXAMPLE: ',                                             �     
     8/,2X,'S(I)=N/SCALE(I)-BIAS(I), WHERE N IS THE ',I2,' BIT SCALED           �     
     9INTEGER WORD, AND S(I) ',                                                 �     
     A/,2X,'IS THE DESIRED UNSCALED PARAMETER.')                                �     
      NHDREC=0                                                                  �     
      KOR=0                                                                     �     
      LOGRHD=0                                                                  �     
      KT=0                                                                      �     
      NPARMS=0                                                                  �     
      NUMSMP=0                                                                  �     
   10 NHDREC=NHDREC+1                                                           �     
C                                                                               �     
C** LOGICAL RECORD SIZE IS 80 CHARACTERS.                                       �     
C                                                                               �     
   20 BUFFER IN (IUNIT,1) (IARRAY(1),IARRAY(100))                                      �    
      IF(UNIT(IUNIT)) 40,110,30                                                 �     
C**  PARITY  **                                                                 �     
   30 IF(UNIT(IUNIT).EQ.1.0) GO TO 120                                          �     
      BACKSPACE IUNIT                                                           �     
      GO TO 20                                                                  �     
C**  GOOD READ  **                                                              �     
   40 LEN=LENGTH(IUNIT)                                                         �     
C                                                                               �     
      DO 100 I=1,LEN,10                                                         �     
      NAME= IARRAY(I)                                                           �     
      IK = I+9                                                                  �     
      LOGRHD=LOGRHD+1                                                           �     
      IF(NAME.NE.7HPROJECT) GOTO 50                                             �     
      DECODE(51,1090,IARRAY(I)) PROJCT                                          �     
   50 IF(NAME.NE.6HPRDATE) GOTO 60                                              �     
      DECODE(14,2000,IARRAY(I)) DAY                                             �     
      DECODE(20,2010,IARRAY(I)) MON                                             �     
      DECODE(25,2020,IARRAY(I)) YRR                                             �     
   60 IF(NAME.NE.6HPRTIME) GOTO 70                                              �     
      DECODE(14,2000,IARRAY(I)) HR                                              �     
      DECODE(20,2030,IARRAY(I)) MIN                                             �     
      DECODE(26,2040,IARRAY(I)) SEC                                             �     
   70 IF(NAME.NE.6HBEGSNP) GOTO 80                                              �     
      DECODE(20,2050,IARRAY(I)) BGSNP(1)                                        �     
      DECODE(33,2060,IARRAY(I)) BGSNP(2)                                        �     
      DECODE(46,2070,IARRAY(I)) BGSNP(3)                                        �     
   80 IF(NAME.NE.6HENDSNP) GOTO 90                                              �     
      DECODE(20,2050,IARRAY(I)) EDSNP(1)                                        �     
      DECODE(33,2060,IARRAY(I)) EDSNP(2)                                        �     
      DECODE(46,2070,IARRAY(I)) EDSNP(3)                                        �     
   90 IF(NAME.EQ.7HMACHINE) DECODE(15,2080,IARRAY(I)) MCHINE                    �     
C                                                                               �     
C**  HDRLOG - NLRPHD -- HEADER LOGICAL RECORD PER PHYSICAL RECORD               �     
C**  HDRSIZ - NBPRHD  -- BITS PER HEADER PHYSICAL RECORD                        �     
C**  LOGBIT - NBLRDT  -- BITS PER DATA LOGICAL RECORD                           �     
C**  DATLOG - NREC -- DATA LOGICAL RECORDS PER PHYSICAL RECORD                  �     
C**  DATSIZ - NBPRDT -- BITS PER DATA PHYSICAL RECORD                           �     
C                                                                               �     
      IF(NAME .EQ.NHDLOG) THEN                                                  �     
        DECODE(13,1010,IARRAY(I)) NLRPHD                                        �     
        HDRLOG=NLRPHD                                                           �     
      END IF                                                                    �     
      IF(NAME .EQ.NHDSIZ) THEN                                                  �     
        DECODE(15,1015,IARRAY(I)) NBPRHD                                        �     
        HDRSIZ=NBPRHD                                                           �     
        NSIZZ=HDRSIZ/10                                                         �           END IF                                                                          �    
      IF(NAME .EQ.NDTLOG) THEN                                                  �     
        DECODE(13,1010,IARRAY(I)) NREC                                          �     
        DATLOG=NREC                                                             �     
      END IF                                                                    �     
      IF(NAME .EQ.NDTSIZ) THEN                                                  �     
        DECODE(15,1020,IARRAY(I)) NBPRDT                                        �     
        DATSIZ=NBPRDT                                                           �     
      END IF                                                                    �     
      IF(NAME .EQ.NLGBIT) THEN                                                  �     
        DECODE(15,1020,IARRAY(I)) NLGBIT                                        �     
        LOGBIT=NLGBIT                                                           �     
      END IF                                                                    �     
C                                                                               �     
C     IF(NAME .EQ. NAPPV ) THEN                                                 �     
C     WRITE(6,1030) (NAMVAR(K),K=1,7)                                           �     
C     END IF                                                                    �     
      IF(NAME .EQ. NORDV ) KOR=KOR+1                                            �     
C                                                                               �     
      IF(KOR.EQ.1) THEN                                                         �     
       IF(NAME.EQ.NLETV) THEN                                                   �     
        NPARMS= NPARMS+1                                                        �     
        DECODE(57,1040,IARRAY(I)) IRATE(NPARMS)                                 �     
        DECODE(51,1090,IARRAY(I)) (TITLE(NPARMS,JJ),JJ=1,5)                     �     
        NUMSMP=NUMSMP+IRATE(NPARMS)                                             �     
       END IF                                                                   �     
      END IF                                                                    �     
C                                                                               �     
C     WRITE(6,1050) NHDREC,KOR                                                  �     
      IF(KOR.EQ.2) THEN                                                         �     
       IF(NAME.EQ.NLETV) THEN                                                   �     
        KT= KT+1                                                                �     
        DECODE(70,1060,IARRAY(I)) BIAS(KT),SCALE(KT),NBITS(KT),                 �     
     1                          NFSTBT(KT),NAMVAR(KT)                           �     
        DECODE(19,3010,IARRAY(I)) UNITS(KT)                                     �     
        LOC(KT)=(NFSTBT(KT)/NBITS(KT))+1                                        �     
       END IF                                                                   �     
      END IF                                                                    �     
  100 CONTINUE                                                                  �     
      GO TO 10                                                                  �     
      WRITE(6,219) NHDREC                                                       �     
  219 FORMAT(/,' THERE ARE  ',I8,' PHYSICAL RECORDS IN THE HEADER FILE')        �     
  110 WRITE(6,3020) PROJCT,BGSNP(1),BGSNP(2),BGSNP(3),EDSNP(1),EDSNP(2),        �     
     1EDSNP(3),NSIZZ,HDRLOG,HDRSIZ,LOGBIT,DATLOG,DATSIZ                         �     
      IWDSZ=NBITS(1)                                                            �     
      WRITE (6,3025) DAY,MON,YRR,HR,MIN,SEC,MCHINE,NPARMS,NUMSMP,IWDSZ          �     	      WRITE (6,3030) IWDSZ,IWDSZ                                                      �    
      WRITE(6,1070)                                                             �     
      DO 115 I=1,NPARMS                                                         �     
  115 WRITE(6,1080)(I,LOC(I),NFSTBT(I),IRATE(I),(TITLE(I,JJ),JJ=1,5),           �     
     1             NAMVAR(I),UNITS(I),SCALE(I),BIAS(I))                         �     
C                                                                               �     
      NWORDS=NBPRDT/IWORD                                                       �     
      NPERCYC=NUMSMP                                                            �     
      CYCTIME=1                                                                 �     
      NPREC=NREC                                                                �     
      WRITE(6,2900) NHDREC                                                      �     
      RETURN                                                                    �     
  120 IFLAG=2                                                                   �     
      WRITE(6,3000) NHDREC                                                      �     
      RETURN                                                                    �     
      END                                                                       �     
C                                                                               �     
      SUBROUTINE RDREC(INUNIT,IRATE,SCALE,BIAS,NPARMS,NPERCYC,NREC,             �     
     +ARRAY,INARRAY,IFLAG)                                                      �     
C                                                                               �     
C    WRITTEN BY KENT KRUMVIEDA, MODIFIED BY MIKE DANIELS                        �     
C                                                                               �     
C    INUNIT- LOGICAL UNIT NUMBER OF INPUT TAPE                                  �     
C    IRATE- RESPECTIVE SAMPLE RATES OF THE DATA                                 �     
C    SCALE- RESPECTIVE SCALE TERMS OF THE DATA                                  �     
C    BIAS- RESPECTIVE BIAS TERMS OF THE DATA                                    �     
C    NPARMS- NUMBER OF PARAMETERS                                               �     
C    NPERCYC- NUMBER OF WORDS PER LOGICAL RECORD                                �     
C    NREC- NUMBER OF LOGICAL RECORDS PER PHYSICAL RECORD                        �     
C    ARRAY- THE ARRAY THAT STORES ONE UNPACKED LOGICAL RECORD OF DATA           �     
C    INARRAY- WORK ARRAY TO STORE ONE PACKED PHYSICAL RECORD                    �     
C    IFLAG- =93 -PARITY ERROR, =90 -EOF                                         �     
C                                                                               �     
      COMMON /BITS/ IWDSZ,LOGBIT,DATLOG,NFSTBT(500),NBITS(500)                  �     
      COMMON /LOGREC/ NPREC,RARRAY(15000)                                       �     
      DIMENSION BIAS(1),SCALE(1),NAMVAR(500),IRATE(1),INARRAY(1),               �     
     1ARRAY(1),PROJCT(5),UNITS(500),IARRAY(10000)                               �     
      INTEGER PROJCT,DATLOG,LOGBIT,DUMMY                                        �     
      IFLAG=0                                                                   �     
 1000 FORMAT(' DATA REC. NO. ',I8,' RECORD LENGTH',I8)                          �     
 1010 FORMAT(10(2X,O11))                                                        �     
 1020 FORMAT(10(2X,I10))                                                        �     
 1030 FORMAT(10(2X,F10.2))                                                      �     
 1040 FORMAT(' PARITY ERROR SENSED ON DATA FILE REC. NO.',I8)                   �     
 1050 FORMAT(' EOF SENSED ON DATA FILE')                                        �     
 1060 FORMAT(/,' OCTAL DUMP OF RECORD # ',I3,/)                                 �     
 1070 FORMAT(/,' INTEGER (PACKED) DUMP OF RECORD # ',I3,/)                      �      1080 FORMAT(/,' DECIMAL      
 (UNPACKED) DUMP OF RECORD # ',I3,/)                    �    
      NDREC=0                                                                   �     
      IF(NPREC.LT.NREC) GOTO 70                                                 �     
      NPREC=0                                                                   �     
   10 NDREC=NDREC+1                                                             �     
   20 BUFFER IN (INUNIT,1) (IARRAY(1),IARRAY(3200))                             �     
      IF(UNIT(INUNIT)) 40,90,30                                                 �     
C-----PARITY                                                                    �     
   30 IF(UNIT(INUNIT).EQ.1.0) GOTO 80                                           �     
      BACKSPACE INUNIT                                                          �     
      GOTO 10                                                                   �     
C-----GOOD READ                                                                 �     
   40 LEN=LENGTH(INUNIT)                                                        �     
      ITER=LOGBIT*DATLOG/IWDSZ                                                  �     
      CALL GBYTES(IARRAY,INARRAY,0,IWDSZ,0,ITER)                                �     
C-----CALCULATE UNSCALED PARAMETERS                                             �     
      DO 60 III=1,DATLOG                                                        �     
      DO 50 I=1,NPARMS                                                          �     
      LOCWD=((NFSTBT(I)-1)/NBITS(I))+1                                          �     
      DO 50 J=1,IRATE(I)                                                        �     
      LW=LOCWD+J-1+(LOGBIT/IWDSZ)*(III-1)                                       �     
      RARRAY(LW)=(INARRAY(LW)/SCALE(I))-BIAS(I)                                 �     
   50 CONTINUE                                                                  �     
   60 CONTINUE                                                                  �     
   70 NPREC=NPREC+1                                                             �     
      IPOS=(NPREC-1)*NPERCYC+1                                                  �     
      DO 75 I=1,NPERCYC                                                         �     
   75 ARRAY(I)=RARRAY(IPOS+I-1)                                                 �     
      RETURN                                                                    �     
   80 IFLAG=93                                                                  �     
      WRITE(6,1040) NDREC                                                       �     
      RETURN                                                                    �     
   90 IFLAG=90                                                                  �     
      WRITE(6,1050)                                                             �     
      RETURN                                                                    �     
      END                                                                       �     
C                                                                               �     
C                                                                               �     
      SUBROUTINE SKIPFILE(IUN,N)                                                �     
      DO 10 I=1,N                                                               �     
10    CALL SKFILE(IUN)                                                          �     
      RETURN                                                                    �     
      END                                                                       �      �      �                                                       �     
C** LOGICAL RECORD SIZE IS 80 CHARACTERS.                                       �     
C                                                                               �     
   20 BUFFER IN (IUNIT,1) (IARRAY(1),IARRAY(100))                               