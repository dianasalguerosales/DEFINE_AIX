//DEFCLUST JOB (DS),'DIANA SALGUERO',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//*
//JOBLIB DD DSN=USERLIB.BATCH,DISP=SHR
//*--------------------------------------------------------------------
//*Definir archivo ESDS y Copiar el archivo PS hacia el ESDS con REPRO
//*--------------------------------------------------------------------
//* ----------------------------------------------------------
//*               CREANDO CLUSTER PARA STDMST
//* ----------------------------------------------------------
//DEFINE   EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE PRUEBA.CLUSTER.DSR.V.T.FORMA.PAGO CLUSTER PURGE
      IF MAXCC = 8                                                     -
      THEN                                                             -
      SET MAXCC = 0
  DEFINE CLUSTER(NAME(PRUEBA.CLUSTER.DSR.V.T.FORMA.PAGO)               -
         INDEXED                                                       -
         SHR(2,3)                                                      -
         NOREUSE                                                       -
         VOLUME(VOL000)                                                -
         CYLINDERS(300 100)                                            -
         CISZ(4096)                                                    -
         KEYS(5 0)                                                     -
         FREESPACE(5 4)                                                -
         RECORDSIZE(550 550))