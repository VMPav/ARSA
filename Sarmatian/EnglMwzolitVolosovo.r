
library(admixtools)
gato_prefix <- "D:/ReichLab_v66/v66_1240K"
#f2_dir <- "D:/Arsa_Final_F2_BlocksSarmatianAlanMin"
#f2_dir <- "D:/Arsa_Final_F2_BlocksGlav"
f2_dir <- "D:/Arsa_Final_F2_BlocksVolosovo"



pops1 <- c("Erzya","Moksha","kzb004.SG","Seima_Turbino","Russia_Tatarstan_EIA1_Ananyino",
"Russia_Tatarstan_LBA_Maklasheevka","Russia_Ivanovo_MLBA_CordedWare_Fatyanovo",
"Russia_Ivanovo_Eneolithic_Volosovo","Russia_LateSarmatian",
"Russia_EarlySarmatian","Russia_Alan","England_Mesolithic",
"Netherlands_EN_LateMesolithic_Swifterbant-o","Russia_AltaiKrai_LN",
"Mbuti","Papuan","Karitiana","Israel_Natufian","Georgia_Satsurblia_LateUP")

options(mc.cores = 8)
#target <- "Moksha"
# target <- "Erzya"
target <- "England_Mesolithic"

model_erzya_final = qpadm(
   data = f2_dir, 
   target,



#left = c("Russia_EarlySarmatian"),
left = c( "Russia_Ivanovo_Eneolithic_Volosovo"),

#left = c( "Russia_Alan","Russia_EarlySarmatian"),
#left = c( "Russia_Alan"),
 #left = c("England_Mesolithic"),
# left = c( ""),
  # Наш победный правый список, который вывел p-value в зеленую зону:
  #right = c("Mbuti", "Papuan", "Israel_Natufian", "Georgia_Satsurblia_LateUP"),
     right = c("Mbuti", "Papuan", "Israel_Natufian", "Georgia_Satsurblia_LateUP","Karitiana"),
)

print("Итоговые веса=")
print(target)
print(model_erzya_final$weights)
print("--- ИСТИННЫЙ P-VALUE ")
print(target)
print(model_erzya_final$popdrop) 
print("Чистое число p-value:")
print(model_erzya_final$popdrop[1, "p"])




