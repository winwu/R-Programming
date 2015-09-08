complete <- function(directory, id = 1:332) {
  
  data <- data.frame()
  
  files_full <- list.files(directory, full.names = TRUE)

  for (i in id)
  {
    # 每隻 csv 開始搜，rbind 是搜每一行
    # rbind 合併 row, 一直把抓到的資料 bind 到 data 去
    #data <- rbind(data, read.csv(files_full[i]))
    thisrow <- read.csv(files_full[i])
    
    # 取單一一個 row 總和
    # ‘is.na’, ‘na.omit’, ‘na.fail’, 'complete.cases' 是差不多的意思
    nobs <- sum(complete.cases(thisrow))
    print(nobs)
    
    tmp <- data.frame(i, nobs)
    
    data <- rbind(data, tmp)
  }
  
  # 改變 column name
  colnames(data) <- c("id", "nobs")
  
  # 測試可先印前六行
  # print(data)
}

complete("specdata", 1)
complete("specdata", c(2, 4, 8, 10, 12))
complete("specdata", 30:25)
complete("specdata", 3)