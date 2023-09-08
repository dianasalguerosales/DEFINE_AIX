//GDGDELET JOB (DS),'DIANA SALGUERO',
//         CLASS=P,
//         REGION=0M,
//         MSGCLASS=X,
//         MSGLEVEL=(1,1),
//         NOTIFY=&SYSUID TYPRUN=SCAN
//*********************************************************
//*               JCL PARA BORRAR UN GDG              **
//*********************************************************
//PASO001  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE (EDUC.EDSR.IBMMF.BASE1)    -
          GDG -
          FORCE
/*
//PASO002  EXEC PGM=IDCAMS
//SYSPRINT DD SYSOUT=*
//SYSIN    DD *
  DELETE (EDUC.EDSR.IBMMF.BASE2)    -
          GDG -
          FORCE
/*