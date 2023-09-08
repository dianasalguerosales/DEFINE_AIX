//JCLMODEL JOB (DS),'DIANA SALGUERO',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//JOBLIB   DD DSN=USERLIB.BATCH,DISP=SHR
//* ----------------------------------------------------------
//*                       CREANDO CLUSTERS
//* ----------------------------------------------------------
//PASO01   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE PRUEBA.CLUSTER.DSR.V.T.FORMA.PAGO
      IF MAXCC = 8                                              -
      THEN                                                      -
      SET MAXCC = 0
  DEFINE CLUSTER                                                -
    (                                                           -
    NAME(PRUEBA..CLUSTER.DSR.V.T.FORMA.PAGO)                   -
    MODEL(PRUEBA.CLUSTER.TRS.V.T.FORMA.PAGO)    -
    VOLUME (DE0005))
    REPRO IDS (PRUEBA.CLUSTER.TRS.V.T.FORMA.PAGO)         -
          ODS (PRUEBA.CLUSTER.DSR.V.T.FORMA.PAGO)        -
          COUNT (10)
/*