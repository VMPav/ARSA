
library(admixtools)
#gato_prefix <- "D:/ReichLab_v66/v66_1240K"
#f2_dir <- "D:/Arsa_Final_F2_Blocks"
#f2_dir <- "D:/Arsa_Final_F2_BlocksMainCW_EnglM719_731" # 719  731
#f2_dir <- "D:/Arsa_Final_F2_Blocks"
f2_dir <- "D:/Arsa_Final_F2_Blocks_Odesa_Stog"

options(mc.cores = 8)

#target <- "Moksha"
#target <- "Erzya"
target <- "Ukraine_Odesa_EBA"
model_erzya_final = qpadm(
   data = f2_dir, 
   target,
#left = c( "Moksha"),
#left = c("Erzya"),
#left = c("England_Mesolithic"),
left = c("Germany_Esperstedt_CordedWare"),
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
