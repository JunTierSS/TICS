library(dplyr)

#------------------------------------------------------------

Rendimiento2019Filtrado <- Rendimiento2019  %>% filter(COD_REG_RBD == '13')  %>% 
  filter(COD_ENSE == '310')  %>% filter(COD_GRADO == '1') %>% filter(ASISTENCIA != '0')

Rendimiento2020Filtrado <- Rendimiento2020  %>% filter(COD_REG_RBD == '13')  %>% 
  filter(COD_ENSE == '310')  %>% filter(COD_GRADO == '2') %>% filter(ASISTENCIA != '0')

Rendimiento2021Filtrado <- Rendimiento2021  %>% filter(COD_REG_RBD == '13')  %>% 
  filter(COD_ENSE == '310')  %>% filter(COD_GRADO == '3') %>% filter(ASISTENCIA != '0')

Rendimiento2022Filtrado <- Rendimiento2022  %>% filter(COD_REG_RBD == '13')  %>% 
  filter(COD_ENSE == '310')  %>% filter(COD_GRADO == '4') %>% filter(ASISTENCIA != '0')


Docente2019Filtrado <- Docentes2019 %>% filter(cod_reg_rbd == '13')
Docente2020Filtrado <- Docentes2020 %>% filter(COD_REG_RBD == '13')
Docente2021Filtrado <- Docentes2021 %>% filter(COD_REG_RBD == '13')
Docente2022Filtrado <- Docentes2022 %>% filter(COD_REG_RBD == '13')


#------------------------------------------------------------

Docente2019Filtrado <- Docente2019Filtrado %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))
Docente2020Filtrado <- Docente2020Filtrado %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))
Docente2021Filtrado <- Docente2021Filtrado %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))
Docente2022Filtrado <- Docente2022Filtrado %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))



Rendimiento2019Filtrado <- Rendimiento2019Filtrado %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))
Rendimiento2020Filtrado <- Rendimiento2020Filtrado %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))
Rendimiento2021Filtrado <- Rendimiento2021Filtrado %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))
Rendimiento2022Filtrado <- Rendimiento2022Filtrado %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))

#-----------------------------------------------------------------------------------

FRendimiento2019Filtrado <- Rendimiento2019Filtrado[c('AGNO','MRUN','RBD','NOM_RBD','NOM_COM_ALU','NOM_COM_RBD','COD_DEPE','COD_GRADO','RURAL_RBD','LET_CUR','COD_JOR','GEN_ALU','FEC_NAC_ALU','EDAD_ALU','PROM_GRAL','ASISTENCIA')]
FRendimiento2020Filtrado <- Rendimiento2020Filtrado[c('AGNO','MRUN','RBD','NOM_RBD','NOM_COM_ALU','NOM_COM_RBD','COD_DEPE','COD_GRADO','RURAL_RBD','LET_CUR','COD_JOR','GEN_ALU','FEC_NAC_ALU','EDAD_ALU','PROM_GRAL','ASISTENCIA')]
FRendimiento2021Filtrado <- Rendimiento2021Filtrado[c('AGNO','MRUN','RBD','NOM_RBD','NOM_COM_ALU','NOM_COM_RBD','COD_DEPE','COD_GRADO','RURAL_RBD','LET_CUR','COD_JOR','GEN_ALU','FEC_NAC_ALU','EDAD_ALU','PROM_GRAL','ASISTENCIA')]
FRendimiento2022Filtrado <- Rendimiento2022Filtrado[c('AGNO','MRUN','RBD','NOM_RBD','NOM_COM_ALU','NOM_COM_RBD','COD_DEPE','COD_GRADO','RURAL_RBD','LET_CUR','COD_JOR','GEN_ALU','FEC_NAC_ALU','EDAD_ALU','PROM_GRAL','ASISTENCIA')]

colnames(FRendimiento2019Filtrado) <- c('agno','mrun','rbd','nom_rbd','nom_com_alu','nom_com_rbd','cod_depe','cod_grado','rural_rbd','let_cur','cod_jor','gen_alu','fec_nac_alu','edad_alu','prom_gral','asistencia')
colnames(FRendimiento2020Filtrado) <- c('agno','mrun','rbd','nom_rbd','nom_com_alu','nom_com_rbd','cod_depe','cod_grado','rural_rbd','let_cur','cod_jor','gen_alu','fec_nac_alu','edad_alu','prom_gral','asistencia')
colnames(FRendimiento2021Filtrado) <- c('agno','mrun','rbd','nom_rbd','nom_com_alu','nom_com_rbd','cod_depe','cod_grado','rural_rbd','let_cur','cod_jor','gen_alu','fec_nac_alu','edad_alu','prom_gral','asistencia')
colnames(FRendimiento2022Filtrado) <- c('agno','mrun','rbd','nom_rbd','nom_com_alu','nom_com_rbd','cod_depe','cod_grado','rural_rbd','let_cur','cod_jor','gen_alu','fec_nac_alu','edad_alu','prom_gral','asistencia')

Docente2019Filtrado1 <- Docente2019Filtrado[c('agno', 'rbd', 'nom_rbd', 'mrun', 'doc_genero', 'doc_fec_nac', 'cod_sec', 'cod_espe', 'cod_ense', 'cod_grado')]
Docente2020Filtrado1 <- Docente2020Filtrado[c('AGNO', 'RBD', 'NOM_RBD', 'MRUN', 'DOC_GENERO', 'DOC_FEC_NAC', 'COD_SEC', 'COD_ESPE', 'COD_ENSE', 'COD_GRADO')]
Docente2021Filtrado1 <- Docente2021Filtrado[c('AGNO', 'RBD', 'NOM_RBD', 'MRUN', 'DOC_GENERO', 'DOC_FEC_NAC', 'COD_SEC', 'COD_ESPE', 'COD_ENSE', 'COD_GRADO')]
Docente2022Filtrado1 <- Docente2022Filtrado[c('AGNO', 'RBD', 'NOM_RBD', 'MRUN', 'DOC_GENERO', 'DOC_FEC_NAC', 'COD_SEC', 'COD_ESPE', 'COD_ENSE', 'COD_GRADO')]

colnames(Docente2020Filtrado1) <- c('agno', 'rbd', 'nom_rbd', 'mrun', 'doc_genero', 'doc_fec_nac', 'cod_sec', 'cod_espe', 'cod_ense', 'cod_grado')
colnames(Docente2021Filtrado1) <- c('agno', 'rbd', 'nom_rbd', 'mrun', 'doc_genero', 'doc_fec_nac', 'cod_sec', 'cod_espe', 'cod_ense', 'cod_grado')
colnames(Docente2022Filtrado1) <- c('agno', 'rbd', 'nom_rbd', 'mrun', 'doc_genero', 'doc_fec_nac', 'cod_sec', 'cod_espe', 'cod_ense', 'cod_grado')

#-----------------------------------

FdocentesFinal <- rbind(Docente2019Filtrado1,Docente2020Filtrado1,Docente2021Filtrado1,Docente2022Filtrado1)

colnames(FdocentesFinal) <- c('agno', 'rbd', 'nom_rbd', 'mrun', 'doc_genero', 'doc_fec_nac', 'cod_sec', 'cod_espe', 'cod_ense', 'cod_grado')
FdocentesFinal <- FdocentesFinal %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))


write.csv2(FdocentesFinal, file = "FdocentesFinal.csv", row.names = FALSE,fileEncoding = "UTF-8")





FrendimientoFinal <- rbind(FRendimiento2019Filtrado,FRendimiento2020Filtrado,FRendimiento2021Filtrado,FRendimiento2022Filtrado)
colnames(FrendimientoFinal) <- c('agno','mrun','rbd','nom_rbd','nom_com_alu','nom_com_rbd','cod_depe','cod_grado','rural_rbd','let_cur','cod_jor','gen_alu','fec_nac_alu','edad_alu','prom_gral','asistencia')

FrendimientoFinal <- FrendimientoFinal %>% mutate_if(is.character, function(x) iconv(x, "UTF-8", "ASCII", sub = ""))

write.csv2(FrendimientoFinal, file = "FrendimientoFinal.csv", row.names = FALSE,fileEncoding = "UTF-8")


