
library(admixtools)
gato_prefix <- "D:/ReichLab_v66/v66_1240K"
f2_dir <- "D:/Arsa_Final_F2_BlocksMinEtruscan"
#f2_dir <- "D:/Arsa_Final_F2_BlocksEtruscanMain"


# Шаг 1. ПОЛНЫЙ ПЕРЕСЧЕТ С НУЛЯ (Генеральная экстракция)
options(mc.cores = 8)
# Шаг 2. Загрузка свежевычисленных блоков
#f2_data <- f2_from_precomp(f2_dir)
#target <- "Moksha"
#target <- "Erzya"
#target <- "Lebanon_MBA"
target <- "Italy_Lazio_IA_Etruscan"
#target <- "Germany_Tollensebattlefield_BA"
#target <- "England_Mesolithic"
model_erzya_final = qpadm(
   data = f2_dir, 
   target,

#left = c("Moksha","Seima_Turbino"),
#left = c("Erzya"),
left = c("Moksha"),
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




