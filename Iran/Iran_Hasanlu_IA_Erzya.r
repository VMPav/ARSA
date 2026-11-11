
library(admixtools)
gato_prefix <- "D:/ReichLab_v66/v66_1240K"
f2_dir      = "D:/Arsa_Final_F2_BlocksIran"

options(mc.cores = 8)
# target <- "Erzya"
target <-  "Iran_DinkhaTepe_BA_IA2-2"
target <-  "Iran_Hasanlu_IA"


model_erzya_final = qpadm(
   data = f2_dir, 
   target,
#left = c( "Moksha"),
left = c("Erzya"),

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
