#(1.a)
(1:5)+rep((0:4),rep(5,5))
#(1.b)
v2<-(1:5)
rep(v2,5)
#(1.c)
v3<-(0:4)
rep(v3,rep(5,5))
#(1.d)
more.colors<-c('red','yellow','blue','green','magenta','cyan')
s<-(1:3)+rep((0:3),rep(3,4))
color.vec<-more.colors[s]
color.vec
#(1.e)
length(unique(color.vec))
#(1.f)
table(color.vec)
#(1.g)
sort(color.vec,decreasing = TRUE)

#(2.a)
n200<-c(1:200);n400<-c(1:400);n600<-c(1:600);n800<-c(1:800)
s1<-sum(n200*n200);s2<-sum(n400*n400);s3<-sum(n600*n600);s4<-sum(n800*n800)
c(s1,s2,s3,s4)
#(2.b)
n<-c(200,400,600,800)
n*(n+1)*(2*n+1)/6
#(2.c)
#TRUE

score0 <- c(81.2, 89.6, 64.2, 91.3, 77.4, 84.5, NA, 91.7, 63.5, 84.8,
            NA, 87.8, 87.9, 80.9, 74.8, 64.3, 78.7, 91.3, 76.9, 74.9, 87.6, 88.4)
#(3.a)
mean(score0);max(score0)
#(3.b)
#加上na.rm=TRUE
mean(score0,na.rm = TRUE);max(score0,na.rm = TRUE)
#(3.c)
score1<-na.omit(score0)
mean(score1);max(score1)
# yes
#(3.d)
score2<-score0
score2[is.na(score2)]<-c(67.2,89.5)
score2
#(3.e)
mean(score2);max(score2)
