
library(admixtools)
#gato_prefix <- "D:/ReichLab_v66/v66_1240K"
f2_dir <- "D:/Arsa_Final_F2_BlocksEngland_Mesolithic"
# 
options(mc.cores = 8)

#target <- "Moksha"
 target <- "Erzya"


model_erzya_final = qpadm(
   data = f2_dir, 
   target,
#left = c( "Moksha"),
#left = c("Erzya"),
left = c("England_Mesolithic"),
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
