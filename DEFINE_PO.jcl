//EDSRIB03 JOB (DS),'DIANA SALGUERO',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//*********************************************************************
//*             CREACION DE UN DATASET PARTICIONADO                ***
//*********************************************************************
//*
//STEP001  EXEC PGM=IEFBR14
//DD1      DD DSN=EDUC.EDSR.IBMMF.PDS1,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(5,5,5),RLSE),
//            DCB=(LRECL=80,BLKSIZE=800,RECFM=FB,DSORG=PO),
//            VOL=SER=EDUC01
//*
//STEP001  EXEC PGM=IEFBR14
//DD2      DD DSN=EDUC.EDSR.IBMMF.PDS2,
//            DISP=(NEW,CATLG,DELETE),
//            SPACE=(TRK,(5,5,5),RLSE),
//            DCB=(LRECL=80,BLKSIZE=800,RECFM=FB,DSORG=PO),
//            VOL=SER=EDUC01
//*