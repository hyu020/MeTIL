calMeTIL <- function(x) {
data <- data.frame(x)
if('cg02430840' %in% row.names(x) | 'cg06113913' %in% row.names(x)) {
print("EPIC array dataset detected")
myprobe <- c('cg02430840','cg06113913','cg12673499')
mydata<-data.frame(data[myprobe,])
mydata2 <- mydata*c(0.28724,0.40171,0.45016)
myscore <- data.frame(colSums(mydata2, na.rm = TRUE))
colnames(myscore) <- c("MeTIL_CD8_EPICarray.Yu2021")
return(myscore)}
else { print("450K array dataset or missed EPIC-array probe detected")
myprobe <- c('cg06935361','cg08521187','cg12673499')
mydata<-data.frame(data[myprobe,])
mydata2 <- mydata*c(0.1973,0.3864,0.3484)
myscore <- data.frame(colSums(mydata2, na.rm = TRUE))
colnames(myscore) <- c("MeTIL_CD8_450Karray.Yu2021")
return(myscore)}
}
