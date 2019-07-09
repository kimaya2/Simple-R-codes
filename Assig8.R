help("aov")
w<-c(8,10,12,8,7)
x<-c(12,11,9,14,4)
y<-c(18,12,16,6,8)
z<-c(13,9,12,16,15)

#user defined(one way Anova)
oneway <-function(a,b,c,d)
{
  t<-sum(sum(a),sum(b),sum(c),sum(d))
  cf<-(t^2)/(length(a)*4)
  t1<-sum(sum(a^2),sum(b^2),sum(c^2),sum(d^2))
  tss<-t1-cf
  ss<-(sum(a)^2/length(a))+(sum(b)^2/length(b))+(sum(c)^2/length(c))+(sum(d)^2/length(d))
  ssc<-ss-cf
  sse<-tss-ssc
  sse
  df<-4-1
  df1<-(length(a)*4)-4
  msc<-ssc/df
  mse<-sse/df1
  f<-mse/msc
  f
}
oneway(w,x,y,z)

#in-built function (one-way anova)
sam <-data.frame(cbind(w,x,y,z))
stacked <-stack(sam)
aov(values~ind,data=stacked)

a<-c(36,28,26)
b<-c(36,29,28)
c<-c(21,31,29)
d<-c(35,32,29)

#user defined function(two way anova)
twoway<-function(a,b,c,d)
{
  #code the data
  a1<-a-30
  b1<-b-30
  c1<-c-30
  d1<-d-30
  #calculation
  t<-sum(sum(a1),sum(b1),sum(c1),sum(d1))
  cf<-(t^2)/(length(a1)*4)
  t1<-sum(sum(a1^2),sum(b1^2),sum(c1^2),sum(d1^2))
  tss<-t1-cf
  ss<-(sum(a1)^2/length(a1))+(sum(b1)^2/length(b1))+(sum(c1)^2/length(c1))+(sum(d1)^2/length(d1))
  ssc<-ss-cf
  p<-(sum(a1[1],b1[1],c1[1],d1[1])^2)/4
  p1<-(sum(a1[2],b1[2],c1[2],d1[2])^2)/4
  p2<-(sum(a1[3],b1[3],c1[3],d1[3])^2)/4
  ssr<-sum(p,p1,p2)-cf
  sse<-tss-sum(ssc,ssr)
  df<-3
  df1<-2
  df2<-df*df1
  msc<-ssc/df
  msr<-ssr/df1
  mse<-sse/df2
  f1<-msr/msc
  f2<-mse/msr
  f2
}
twoway(a,b,c,d)

#in-built (two-way Anova)
sam1<-data.frame(cbind(a,b,c,d))
stacked1 <-stack(sam1)
seasons<-c("summer","winter","monsoon")
data<-cbind(stacked1,seasons)
aov(values~ind+seasons,data=data)
