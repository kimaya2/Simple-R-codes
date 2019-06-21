v <-c(1,47,13,37,89,24)
mean(v);
median(v);

arimean<-function(v)
{
  print (sum(v)/length(v));
}

geomean<-function(v)
{
  prod(v)^(1/length(v))
}
geomean(v)

harmean<-function(v)
{
  length(v)/sum(1/v)
}
harmean(v)

harmean1<-function(v)
{
  1/mean(1/v)
}
harmean1(v)

median1<-function(v)
{
  t=sort(v)
  if(length(v)%%2==0)
  {
    (sum(t[(length(v)/2)],t[(length(v)/2)+1]))/2
  }
  else
  {
    t[(length(v)+1)/2]
  }
}
median1(v)

s<-c(5,6,7,8,9,10,11)
f <-c(10,20,25,22,40,23,15)

arimeanf<-function(s,f)
{
sum(s*f)/sum(f)
}
arimeanf(s,f)

s<-c(5,6,7,8,9,10,11)
f <-c(10,20,25,22,40,23,15)
harmean2<-function(s,f)
{
  sum(f)/sum((f/s))
}
harmean2(s,f)

geomean2<-function(s,f)
{
  prod(s^f)^(1/sum(f))
}
geomean2(s,f)


s<-c(5,6,7,8,9,10,11)
f <-c(10,20,25,22,40,23,15)
cf <-cumsum(f)
z<-data.frame(s,f,cf)
median1<-function(z)
{
  n<-sum(f)
  a=((n+1)/2)
  i=1
  while(z[i,3]<a)
  {
    i=i+1
  }
  z[i,1]
}
median1(z)

mode1<-function(z)
{
  i=which(z$f==max(z$f))
  i
  z[i,1]
}
mode1(z)

z=read.csv(file="/home/ccoew/3904/abc.csv")
arimean(z[,1])
mean(z[,1])
median(z[,1])
median0(z[,1])

data("mtcars")
head(mtcars)
arimean(mtcars[,1])
mean(mtcars[,1])
median(mtcars[,1])
median0(mtcars[,1])