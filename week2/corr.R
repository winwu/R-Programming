# 解題思路: https://www.zybuluo.com/biobyelogy/note/22608
# 创建一个空的 numeric 向量。
# 遍历 directory 目录中的每一个文件，
# 可以使用这样的循环形式：for (filename in dir(directory)。
# 对每一个文件，生成正确的文件目录，读取文件，生成 data.frame。
# 用 complete.cases 和 sum 计算 data.drame 中完整 case 的数量，
# 如果大于 threshold，使用 cor 函数计算相关系数。注意在 cor 函数中使用正确的 use 参数。把得到的相关系数放入第一步创建的 numeric 向量。
# 返回 numeric 向量。

corr <- function(directory, threshold = 0) {
  
  files_full <- list.files(directory, full.names = TRUE)

  data <- vector(mode = "numeric", length = 0)
      
  for (i in 1:length(files_full)) {

    thisrow <- read.csv(files_full[i])

    # thisrow$XXX 取某個 column 欄位 
    # 取總和，如果 (sulfate or nitrate 硫酸鹽或硝酸鹽) 都不是 NA
    csum <- sum((!is.na(thisrow$sulfate)) & (!is.na(thisrow$nitrate)))
    
    if (csum > threshold) {
      tmp <- thisrow[which(!is.na(thisrow$sulfate)), ]
      submoni_i <- tmp[which(!is.na(tmp$nitrate)), ]
      data <- c(data, cor(submoni_i$sulfate, submoni_i$nitrate))
    }
  }
  
  data

}

# cr <- corr("specdata", 150)
# head(cr)

# summary(cr)

# cr <- corr("specdata", 400)
# head(cr)

# summary(cr)

# cr <- corr("specdata", 5000)
# summary(cr)

# length(cr)

# summary(cr)

# length(cr)