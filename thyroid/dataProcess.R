thyData = read.table("/home/tyan/DataSet/thyroid-disease/allbp",sep=',',header=T,na.strings='?')
thyData1 = thyData[-1]
#写入mysql数据库
library(RMySQL)
conn <- dbConnect(MySQL(), dbname = "thyroid-disease", username="root", password="cangpeishi",host="127.0.0.1",port=3306)

#关闭数据库
#dbDisconnect(conn)

#打印数据库的表
dbListTables(conn)

#写入
dbWriteTable(conn, "allbp", data, overwrite=TRUE)

