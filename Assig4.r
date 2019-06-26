x <-c(240,260,270,245,255,288,272,268,277,257)
vars<-function(x)
{
  y<-mean(x)
  z<-(x-y)^2
  vars<-(sum(z)/(length(x)-1))#var and std dev use N-1 bcoz we're working on sample data
  vars
}
stddev<-function(x)
{
  q<-vars(x)
  std<-sqrt(q)
  std
}
coevar <-function(x)
{
  coe <-(stddev(x)/mean(x))*100
  coe
}
#for vector x
var(x)
vars(x)
sd(x)
stddev(x)
coevar(x)
#for csv file abc.csv
z=read.csv(file="/home/ccoew/3904/abc.csv")
var(z[,1])
vars(z[,1])
sd(z[,1])
stddev(z[,1])
coevar(z[,1])
#for inbuilt dataset
data("mtcars")
head(mtcars)
var(mtcars[,1])
vars(mtcars[,1])
sd(mtcars[,1])
stddev(mtcars[,1])
coevar(mtcars[,1])