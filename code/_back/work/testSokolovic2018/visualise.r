

library(lme4)
source("d:\\My Documents\\Work\\statistika\\Eucleg\\functions.r")
# sok2018 = loadData("d:\\My Documents\\Work\\statistika\\Eucleg\\data\\IKBKS.2018.xlsx", "Sheet 1")
lmerRez <- lmer(sok2018$X09_Plant_height_2018_08_10 ~ 1 + (1|row) + (1|column) + (1|euclegID), data = sok2018)
iz = writeLmerRez(lmerRez)
eid = iz$euclegID
#VarCorr(lmerRez, type="varcov")
#ranf <- ranef(obj = lmerRez, drop=TRUE)
#flist <- lmerRez@flist
#View(flist)

install.packages('tidyr')
library(broom)
tidy(lmerRez)
