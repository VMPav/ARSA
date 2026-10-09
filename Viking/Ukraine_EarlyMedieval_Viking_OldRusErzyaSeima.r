
library(admixtools)
#gato_prefix <- "D:/ReichLab_v66/v66_1240K"
#f2_dir <- "D:/Arsa_Final_F2_Blocks"
#f2_dir <- "D:/Arsa_Final_F2_BlocksMainCW_EnglM719_731" # 719  731
#f2_dir <- "D:/Arsa_Final_F2_Blocks"
#f2_dir <- "D:/Arsa_Final_F2_BlocksEsperstedt_YamnayaEnglMezolit"
#f2_dir <- "D:/Arsa_Final_F2_BlocksBest"
#f2_dir <- "D:/Arsa_Final_F2_BlocksVikingLast" ----------
f2_dir <- "D:/Arsa_Final_F2_BlocksVikingRus"
#f2_dir <- "D:/Arsa_Final_F2_BlocksVikingAllUkraine"

options(mc.cores = 8)

#target <- "Moksha"
# target <- "Erzya"
# target <- ""
target <- "Ukraine_EarlyMedieval_Viking_OldRus"
#target <- "Russia_EarlyMedieval_Viking_OldRus"
#target <- "Russia_Samara_EBA_Yamnaya"
#target <- "Russia_Chelyabinsk_MLBA_Sintashta"
model_erzya_final = qpadm(
   data = f2_dir, 
   target,
# left = c( "Erzya", "Russia_Samara_EBA_Yamnaya"),
#left = c( "Moksha", "Russia_EMBA_FatyanovoBalanovo_CordedWare_Volga","Russia_Samara_EBA_Yamnaya"),
#left = c("Erzya"),
#left = c("England_Mesolithic","Russia_Samara_EBA_Yamnaya"),
#left = c("England_Mesolithic","Russia_Samara_EBA_Yamnaya"),
#left = c("England_Mesolithic"),
left = c("Erzya","Seima_Turbino"),
#left = c("Moksha","Seima_Turbino"),
#left = c("Erzya"),
#left = c("England_Mesolithic"),
# left = c("Moksha"),
#left = c("Erzya","Seima_Turbino"),
#left = c("Germany_Esperstedt_CordedWare"),
#left = c("Russia_Samara_EBA_Yamnaya"),

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


pops <- c(
   "Erzya",
   "Moksha",
   # "Poland_EarlySlav",
   "Seima_Turbino",
   #  "Russia_EMA_Viking_OldRus" ,
   # "Wales_Viking",

   #  "Hungary_Elite_EarlyAvar-oHighEastAsia",
   #  "Kazakhstan_Medieval_Nomad",
   "Russia_EarlyMedieval_Viking",
   "Russia_EarlyMedieval_Viking_OldRus-o",
   "Ukraine_EarlyMedieval_Viking_OldRus",

   ## "Sweden_Viking-1",
   "Ukraine_EarlyMedieval_Viking_OldRus-o",
   "Ukraine_Medieval_OldRus",

   # "Russia_EarlyMedieval",
   # "Russia_EMA_Viking_OldRus"

   "Russia_Roman_RyazanOka",

   # "Russia_EarlyMedieval_Viking",

   # "Estonia_EarlyMedieval_EarlyViking",
   # "Sweden_LN_Viking",
   # "Sweden_Viking",
   # "Poland_Viking",
   # "Denmark_EarlyViking",
   "Russia_Samara_LBA_Srubnaya",
   "England_Mesolithic"
)