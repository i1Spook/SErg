x<-1 #Standardmäßig als numeric
y<-1L #suffix L erzwingt integer
1/Inf
z<-0/0
(v1<-c(0.5,0.6)) #klammern drum rum zur sofortigen ausgabe
v2<-c(T,F)
v2 #oder die variable einzeln
v3<-c("H","A","L","L","O")
v4<-15:28
v5<-vector("numeric",length =10)
v6<-c(1.7,"a")
class(v6)
v7<-as.numeric(v6)
v7
v8<-as.character(v6)
v8


#####Übungsaufgabe 2#####

matrix(c(1,6,11,16, 2,7,12,17, 3,8,13,18, 4,9,14,19, 5,10,15,20),nrow = 4, ncol = 5)
#Matrix erstellen
m<-matrix(1:20, 4, 5, byrow = TRUE)
#Die Diagonalen auf NA setzen
diag(m)<-NA 

spalte<-c(100,200,300,400)
#column(spalte) hinzufügen
m<-cbind(m,spalte) 

zeile<-c(20,30,40,50,60,70)
#row(zeile) hinzufügen
m<-rbind(m,zeile) 

m
#Diagonalen bzw NAs auf 0
diag(m)<-0 
m
#Dimensionen der Matrix ausgeben
dim(m) 
#Mittelwert der Zeilen
apply(m,1, mean)
#Mittelwert der Spalten
apply(m,2,mean) 
diag(m)<-NA
m
for (variable in m) {
  if (!is.na(variable)) {
    print(variable)
  }
}
###########Übungsaufgabe 3##################
setwd("Y:/noeckerpa71806")
data("mtcars")
class(mtcars)
write.csv2(mtcars, file = "MTCarsTable.csv")

###deleted rows###

df <- read.csv2(file = "MTCarsTable.csv")
(treffer <- df[rowSums(is.na(df)) > 0,])
df2<-df[!rowSums(is.na(df)) > 0,]
df2

m = matrix(c(1,2,1,4,5,6,7,2,9),3,3,byrow=T)
# Zeilenweise
for (i in 1:dim(m)[1]) {
  if (sum(duplicated(m[i,])) > 0)
    print("Treffer")
  print(i)
}

# Spaltenweise 
for (i in 1:dim(m)[2]) {
  if (sum(duplicated(m[,i])) > 0)
    print("Treffer")
  print(i)
}
##### Beispiel: Je mehr Leistung, desto weniger Reichweite
plot(mtcars$hp,mtcars$mpg,xlab = "Leistung[PS]",ylab = "Reichweite[Mpg]",main = "Reichweite pro Leistung")

#########Übungsaufgabe 4##################
CO2
AirPassengers
hist(AirPassengers, breaks=10, col="red", xlab="Years", ylab="Passengers", main = "AirPassenger")

##########Übungsaufgabe 5################
name <-c("Eins", "Zwei", "Drei", "Vier", "Fünf")
weight <- c(0.3, 0.2, 0.1, 0.2, 0.2)

stopifnot(sum(weight) == 1) #Prüft ob die Gewichtungen insgesamt 100% ergeben

A<-data.frame(name, weight)
A$rating = c(6, 4, 3, 5, 2)

A$Score = A$rating * A$weight

CalculateScore <- function (i,j,k,l,m) 
{ 
  
  # Summe der gewichteten Teilnutzen (d.h. Gesamt Score) berechnen 
  
} 
(CalculateScore(2,3,4,1,2))














####Woche 7 Aufgabe 2####
getwd()
setwd("Z:/")
getwd()

table1 <- read.csv2("testResults_False_True_1.csv", FALSE)
table2 <- read.csv2("testResults_False_True_2.csv", TRUE)






