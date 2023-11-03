library(dplyr)


Rendimiento2019Filtrado <- Rendimiento2019  %>% filter(COD_REG_RBD == '13') %>% filter(NOM_COM_RBD == 'SANTIAGO') %>% 
  filter(COD_ENSE == '310')  %>% filter(COD_GRADO == '1') %>% filter(ASISTENCIA != '0')

Rendimiento2020Filtrado <- Rendimiento2020  %>% filter(COD_REG_RBD == '13') %>% filter(NOM_COM_RBD == 'SANTIAGO') %>% 
  filter(COD_ENSE == '310')  %>% filter(COD_GRADO == '2') %>% filter(ASISTENCIA != '0')

Rendimiento2021Filtrado <- Rendimiento2021  %>% filter(COD_REG_RBD == '13') %>% filter(NOM_COM_RBD == 'SANTIAGO') %>% 
  filter(COD_ENSE == '310')  %>% filter(COD_GRADO == '3') %>% filter(ASISTENCIA != '0')

Rendimiento2022Filtrado <- Rendimiento2022  %>% filter(COD_REG_RBD == '13') %>% filter(NOM_COM_RBD == 'SANTIAGO') %>% 
  filter(COD_ENSE == '310')  %>% filter(COD_GRADO == '4') %>% filter(ASISTENCIA != '0')

FRendimiento2019Filtrado <- Rendimiento2019Filtrado[c('AGNO','MRUN','NOM_COM_ALU','COD_GRADO','LET_CUR','COD_JOR','GEN_ALU','FEC_NAC_ALU','EDAD_ALU','PROM_GRAL','ASISTENCIA')]
FRendimiento2020Filtrado <- Rendimiento2020Filtrado[c('AGNO','MRUN','NOM_COM_ALU','COD_GRADO','LET_CUR','COD_JOR','GEN_ALU','FEC_NAC_ALU','EDAD_ALU','PROM_GRAL','ASISTENCIA')]
FRendimiento2021Filtrado <- Rendimiento2021Filtrado[c('AGNO','MRUN','NOM_COM_ALU','COD_GRADO','LET_CUR','COD_JOR','GEN_ALU','FEC_NAC_ALU','EDAD_ALU','PROM_GRAL','ASISTENCIA')]
FRendimiento2022Filtrado <- Rendimiento2022Filtrado[c('AGNO','MRUN','NOM_COM_ALU','COD_GRADO','LET_CUR','COD_JOR','GEN_ALU','FEC_NAC_ALU','EDAD_ALU','PROM_GRAL','ASISTENCIA')]

write.csv2(FRendimiento2019Filtrado, file = "FRendimiento2019Filtrado.csv", row.names = FALSE,fileEncoding = "UTF-8")
write.csv2(FRendimiento2020Filtrado, file = "FRendimiento2020Filtrado.csv", row.names = FALSE)
write.csv2(FRendimiento2021Filtrado, file = "FRendimiento2021Filtrado.csv", row.names = FALSE)
write.csv2(FRendimiento2022Filtrado, file = "FRendimiento2022Filtrado.csv", row.names = FALSE)