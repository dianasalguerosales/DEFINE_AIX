//DEFINEPS JOB (DS),'DIANA SALGUERO',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//*********************************************************************
//*             CREACION DE UN DATASET SECUENCIAL                   ***
//*********************************************************************
//*
//STEP001  EXEC PGM=IEFBR14
//DD1      DD DSN=EDUC.EDSR.IBMMF.PS1,
//            DISP=(MOD,CATLG,DELETE),
//            VOL=SER=EDUC01,
//            SPACE=(TRK,(5,5),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=800,DSORG=PS)
//*
//DD2      DD DSN=EDUC.EDSR.IBMMF.PS2,
//            DISP=(MOD,CATLG,DELETE),
//            VOL=SER=EDUC01,
//            SPACE=(TRK,(5,5),RLSE),
//            DCB=(LRECL=80,RECFM=FB,BLKSIZE=800,DSORG=PS)
//*