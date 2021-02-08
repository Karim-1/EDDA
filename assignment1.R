# testtt
getwd()
setwd("/Users/daan/Library/Mobile Documents/com~apple~CloudDocs/Uni/Master Computational Science/EDDA/EDDA")

birth = read.table("birthweight.txt",header=TRUE)
birth$birthweight
mean(birth$birthweight)

# dus als shapiro p > 0.05 is neem je h0 aan
# shaprio h0: x1,....,xn. komen van een normal distributed population
shapiro.test(birth$birthweight)

