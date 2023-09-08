//EDSRIB07 JOB (BI),'BANCO INDUSTRIAL',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//*********************************************************
//*               CREACION DE UN GDG BASE                **
//*********************************************************
//PASO001  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DEFINE GDG(NAME(EDUC.EDUK4022.SALIDA.UNO) -
             LIMIT(7) -
             NOEMPTY -
             SCRATCH)
/*
//PASO002  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DEFINE GDG(NAME(EDUC.EDSR.IBMMF.BASE2) -
             LIMIT(7) -
             NOEMPTY -
             SCRATCH)
/*