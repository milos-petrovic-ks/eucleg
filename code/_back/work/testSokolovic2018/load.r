
# install.packages("readxl")
# install.packages("gplots")
install.packages("gplots")

library("readxl")
sokolovic2018 = read_excel("d:\\My Documents\\Work\\statistika\\Eucleg\\work\\testSokolovic2018\\allData.xlsx", sheet = "Observations")
summary(sokolovic2018)

