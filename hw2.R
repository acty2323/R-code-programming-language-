
two.dice <- matrix( c(3, 5, 5, 4, 4, 3, 4, 5, 5, 2, 3, 2, 6, 6, 6,
                      3, 6, 2, 1, 2, 5, 6, 1, 5, 6, 1, 3, 6, 6, 3,
                      5, 3, 3, 5, 3, 3, 4, 2, 1, 4, 3, 1, 5, 1, 6,
                      4, 5, 5, 3, 5, 2, 2, 1, 2, 2, 6, 1, 3, 4, 5,
                      6, 4, 3, 3, 6, 1, 2, 1, 4, 5, 1, 1, 2, 3, 6,
                      5, 6, 5, 3, 1, 4, 1, 5, 2, 2, 6, 3, 2, 3, 1,
                      5, 1, 2, 5, 1, 1, 1, 3, 1, 3, 4, 1, 6, 5, 1,
                      5, 6, 6, 5, 5, 2, 4, 1, 3, 5, 2, 1, 1, 1, 1), ncol = 2)
n<-c()
for (ii in (1:dim(two.dice)[1])){
  if (length(unique(n))==11) break
    n<-c(n,sum(two.dice[ii,]))
}
print(length(n))


u <- c(0.89, 0.03, 0.52, 0.41, 0.09, 0.37, 0.71, 0.29, 0.01, 0.92,
       0.53, 0.14, 0.64, 0.94, 0.89, 0.19, 0.33, 0.31, 0.24, 0.15)
m<-c(0.89)
for (mm in (2:length(u))){
  if (m[mm-1]<1e-8) break
    m<-c(m,m[mm-1]*u[mm])
}
print(length(m)-1)



Math <- c(79, 61, 76, 40, 51, 98, 48, 34, 54, 51, 45, 61, 75, 42, 32,
          61, 56, 82, 22, 33, 19, 60, 91, 49, 44)
English <- c(87, 54, 96, 63, 58, 75, 60, 74, 46, 94, 57, 69, 69, 55, 79,
             94, 72, 86, 85, 56, 62, 77, 78, 62, 56)
scores<-matrix(c(Math,English),nrow=length(Math),ncol=2)
rownames(scores)<-(1:length(Math));colnames(scores)<-c('Math','English')
print(scores)
cat('(3b)','\n',sep="")
A<-c();B<-c();C<-c();D<-c()
for (ss in (1:length(Math))){
  if (scores[ss,][1]>=60 && scores[ss,][2]>=60) A<-c(A,ss)
  else if (scores[ss,][1]>=60 && scores[ss,][2]<60) B<-c(B,ss)
  else if (scores[ss,][1]<60 && scores[ss,][2]>=60) C<-c(C,ss)
  else{
    D<-c(D,ss)
  }
}
cat(paste(c('A:','B:','C:','D:'),c(length(A),length(B),length(C),length(D)),collapse='; '))

cat(c('A:',A),"\n",c('B:',B),'\n',c('C:',C),'\n',c('D:',D))


k<-c(5,10,11,1,0,3,8,10,4,0,1,6,7,10,7,0)
k<-k[which(k!=0)]

a<-round(summary(k)[4],digits = 6)
b<-sum(k)
cc<-length(k)
d<-length(which((k%%2)!=0))
e<-length(which(k==10))
f<-summary(k)[6]
cat(paste(c('(1) sum:','(2) length:','(3) Average:','(4) # of odd:','(5) # of 10:','(6) Max:'),
            c(b,cc,a,d,e,f),collapse ="\n"))

kk<-c(7,5,0,1,2,7,1,10,5,0,3,7,2,3,3)
kk<-kk[which(kk!=0)]
aa<-round(summary(kk)[4],digits = 6)
bb<-sum(kk)
cck<-length(kk)
dd<-length(which((kk%%2)!=0))
ee<-length(which(kk==10))
ff<-summary(kk)[6]
cat(paste(c('(1) sum:','(2) length:','(3) Average:','(4) # of odd:','(5) # of 10:','(6) Max:'),
          c(bb,cck,aa,dd,ee,ff),collapse ="\n"))