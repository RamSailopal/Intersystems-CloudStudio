#!/bin/bash
/usr/irissys/irisstart
iris terminal IRIS <<< 'do $System.OBJ.ImportDir("/usr/irissys/CloudStudio/src/cls/CloudStudio","*.xml;*.cls;*.mac;*.int;*.inc;*.dfi","ck",,1) H'
iris terminal IRIS -U %SYS <<< 'S ^SYS("Security","ApplicationsD","/cloudstudio")=$lb("",32,1,"","/cloudstudio/","",1,"","",0,1,"",$lb(":%DB_%DEFAULT"),"/cloudstudio","USER","","/usr/irissys/CloudStudio/src/csp/",1,"","",2,"",900,2,2,"",3600,0,1,0,"",0,"","",0,0,0,2,2,1,0) H'
/usr/irissys/irisforce <<< "Y"