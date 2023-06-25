writeLmerRez <- function(lmerRez)
{
  library(arm)
  library(stargazer)
  summary(lmerRez)
  stargazer(lmerRez, type = "text", digits = 3, star.cutoffs = c(0.05, 0.01, 0.001), digit.separator = "")
  print ("RANEF")
  rnf <- ranef(lmerRez)
  print(rnf$euclegID)
  
  #print ("COEF")
  #print(coef(lmerRez))
  #print ("SE")
  #print(se.ranef(lmerRez))
  #print(se.fixef(lmerRez))
  return(rnf)
  
}

heatmapCustom <- function(allData,heatRow)
{
  row = allData$Row
  column = allData$Column
  rowLen <- max(row)
  colLen <- max(column)
  dataLen <- length(heatRow)[1]
  
  rez <- matrix(nrow = rowLen, ncol = colLen)
  
  for(i in 1:dataLen)
  {
    rez[row[i],column[i]] <- heatRow[i]
  }
  heatmap(rez,  Colv=NA, Rowv=NA)
}

loadData <- function(excelName, sheet)
{
  library("readxl")
  data = read_excel(excelName, sheet)
  return(data)
}

