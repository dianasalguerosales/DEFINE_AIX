//DEFINAIX JOB (BI),'DIANA SALGUERO',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//JOBLIB   DD DSN=USERLIB.BATCH,DISP=SHR
//         DD DSN=RW.V1R5M0.SCXRRUN,DISP=SHR
//* ----------------------------------------------------------
//*               CREANDO INDICES ALTERNOS
//* ----------------------------------------------------------
//PASO01   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
   DELETE -
          PRUEBA.UNO.DSR.M.P.MAESTRO.PRUE.PATH
   DELETE -
          PRUEBA.UNO.DSR.M.P.MAESTRO.PRUE.AIX

          IF MAXCC = 8                                     -
          THEN                                             -
          SET MAXCC = 0
/*
//PASO02   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
   DEFINE AIX                                                          -
   (                                                                   -
       NAME (PRUEBA.UNO.DSR.M.P.MAESTRO.PRUE.AIX)                      -
       RELATE (PRUEBA.UNO.DSR.M.P.MAESTRO.PRUE.PRUEBA)                 -
       RECSZ (23 83)                                                   -
       KEYS (08 10)                                                    -
       CYL (5 5)                                                       -
       VOLUME(VOL000)                                                  -
       UPGRADE                                                         -
       NONUNIQUEKEY                                                    -
       SHAREOPTIONS(2)                                                 -
   )
   BLDINDEX IDS (PRUEBA.UNO.DSR.M.P.MAESTRO.PRUE.PRUEBA)               -
            ODS (PRUEBA.UNO.DSR.M.P.MAESTRO.PRUE.AIX)
   DEFINE PATH (NAME(PRUEBA.UNO.DSR.M.P.MAESTRO.PRUE.PATH)             -
          PATHENTRY (PRUEBA.UNO.DSR.M.P.MAESTRO.PRUE.AIX))