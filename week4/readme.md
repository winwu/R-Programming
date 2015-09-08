這個作業的資料是來自於一個醫院比較的網站。這個網站提供健保在美國質量超過 4000 醫療認證的資院的基本訊息，幾乎是涵蓋了所有美國醫院。

此網站提供很多數據，在此作業只是放了一部分而已。對此， coursera 在此作業中，提供三個資料，`你只需要把重點放在那兩個 csv 就好`。

#### outcome-of-care-measures.csv
  Contains information about 30-day mortality and readmission rates for heart attacks, heart failure, and pneumonia for over 4,000 hospitals.
  含有約30天的死亡率和再住院率，心臟發作，心臟衰竭，肺炎超過4000家醫院的信息。

#### hospital-data.csv
  Contains information about each hospital.
  包含每家醫院的資訊。

#### Hospital_Revised_Flatfiles.pdf
  Descriptions of the variables in each file (i.e the code book).
  說明每個欄位的意義。

在每個文件中的變量的描述是在附帶的名為Hospital_Revised_Flatfiles.pdf PDF文件。本文件包含有關未包含在此編程任務的許多其他文件資料。你會希望把重點放在了19號（“關愛Measures.csv的結果”）和11號（“醫院data.csv的”）的變量。

您可能會發現打印出這個文件（至少頁
表19和11）有在你身邊，而你這方面的工作任務。具體地，對於每個表中的變量的數字表示在各表列索引（即“醫院名稱”是在結果的護理-measures.csv的文件2列）。

## Mission 1: Plot the 30-day mortality rates for heart attack 

繪製的30天心臟發作的死亡率

1. Read the outcome data into R via the read.csv function and look at the first few rows.

```R
> outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")
> head(outcome)
# There are many columns in this dataset. You can see how many by typing ncol(outcome) (you can see # the number of rows with the nrow function). In addition, you can see the names of each column by # # typing names(outcome) (the names are also in the PDF document.
# To make a simple histogram of the 30-day death rates from heart attack (column 11 in the outcome # # dataset), run

> outcome[, 11] <- as.numeric(outcome[, 11])

> ## You may get a warning about NAs being introduced; that is okay
> hist(outcome[, 11])
￼1
# Because we originally read the data in as character (by specifying colClasses = "character" we
# need to coerce the column to be numeric. You may get a warning about NAs being introduced but that # is okay.
# There is nothing to submit for this part.
```


## Mission 2: Finding the best hospital in a state 找到每洲最好的醫院

## Mission 3: Ranking hospitals by outcome in a state 依照狀態排序醫院

## Mission 4: Ranking hospitals in all states 依照州別，排序所有的醫院

