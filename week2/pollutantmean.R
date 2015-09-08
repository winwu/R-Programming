# see also
# https://github.com/rdpeng/practice_assignment/blob/master/practice_assignment.rmd



# run this file 
# R -f  pollutantmean.R
# or source('~/project/R-Programming/week2/pollutantmean.R')


# Example:
# pollutantmean('/Users/win/project/R-Programming/week2/specdata', 'sulfate', 1:10)

pollutantmean <- function(directory, pollutant, id = 1:332) {
	
	# set dictory to your specdata folder
  setwd(directory)
	getwd()
  
  # 把 specdata 資料夾底下的檔案都列出來
  # full.names 的參數可以取得絕對路徑

  # 320.csv -->  "/Users/win/project/R-Programming/week2/specdata/320.csv"
  fules_full <- list.files(directory, full.names = TRUE)

  # 不可以用 data.frame   一定要呼叫()
  # init empty date.frame
  data <- data.frame()

	for (i in id)
	{
		# 每隻 csv 開始搜，rbind 是搜每一行
		# rbind 合併 row, 一直把抓到的資料 bind 到 data 去
		data <- rbind(data, read.csv(files_full[i]))
	}

	# 計算平均值，至於要計算哪一欄，可能是 (sulfate or nitrate 硫酸鹽或硝酸鹽) 吧
	# 參數 na.rm 表示是否要移除 NA 的值，預設是 false
	# 但因題目條件，必須將 NA 刪掉

	# todo: 有 colmean??
	mean(data[, pollutantmean], na.rm = TRUE)

}
