path="C:/Users/punch/Desktop/test.xlsx"

Data<-read_excel(path)
Data<-as.data.frame(Data)
BMI<-function(cm,kg)round(kg/(0.01*cm)^2,2)

# cm=166
# kg=61
# bmi=BMI(cm,kg)
# Data<-data.frame(日期=as.character(Sys.Date()),身高=cm,體重=kg,BMI=bmi,體脂=25)


cm=166
kg=61
t=25
Data<-rbind(Data,c(as.character(Sys.Date()),cm,kg,BMI(cm,kg),t))
write.xlsx(Data,path,col.names = TRUE, row.names = F, append = FALSE)

as.data.frame(Data)


getwd()
setwd('C:/Users/punch/Desktop/')

