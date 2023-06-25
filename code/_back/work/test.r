
require(nlme)
install.packages("nlme")
library(nlme)

rez.lme <- lme(stres ~ block1, data = drought, random=pdBlocked(list(pdIdent(~1),pdIdent(~euclegID-1),pdIdent(~row-1),pdIdent(~column-1))))
drought$Dummy <- factor(1)
drought <- groupedData(stres ~ 1 | Dummy, drought)
rez.lme = lme(stres ~ block1, data=drought, random=pdBlocked(list(pdIdent(~ 0 + euclegID), pdIdent(~ 0 + row), pdIdent(~ 0 + column))))
summary(rez.lme)
library(lme4)
model = lmer(stres ~ block1 + (1|euclegID) + (1|row) + (1|column),data=drought, REML=TRUE)
summary(model)
