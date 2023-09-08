//EDSRIB08 JOB (DS),'DIANA SALGUERO',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//*********************************************************
//*          CREACION DE UN GDG GENERACIONAL(S)          **
//*********************************************************
//PASO001  EXEC PGM=IEFBR14
//SYSPRINT DD SYSOUT=*
//DD1      DD DSN=EDSR.IBMMF.BASE1(+1),
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(TRK,(100,100),RLSE),
//         DCB=(LRECL=80,RECFM=FB,BLKSIZE=800,DSORG=PS)
//*
//DD2      DD DSN=EDSR.IBMMF.BASE2(+1),
//         DISP=(NEW,CATLG,DELETE),
//         SPACE=(TRK,(100,100),RLSE),
//         DCB=(LRECL=80,RECFM=FB,BLKSIZE=800,DSORG=PS)
//*