##심장질환 유무에 따른 최대 심박수 비교
#데이터 입력
data1 <- read.csv("C:/Users/yunzz/Downloads/heart_disease_uci.csv", fileEncoding = "UTF-8")

nodise <- data1[data1$num==0, 'thalch']
yesdise <- data1[data1$num>0, 'thalch']

#등분산성 검증
var.test(yesdise, nodise)

#모평균 비교 검증
t.test(yesdise, nodise, mu=0, var.equal=TRUE, alternative="two.sided")

##나이에 따른 당뇨병 유병률 비교
#데이터 입력
data2 <- read.csv("C:/Users/yunzz/Downloads/diabetes.csv", fileEncoding = "UTF-8")

up30 <- data2[data2$Age>=30, 'Outcome']
low30 <- data2[data2$Age<30, 'Outcome']

#모비율 검증
n1 <- length(up30)
n2 <- length(low30)
success1 <- sum(up30==1)
success2 <- sum(low30==1)

prop.test(c(success1, success2), c(n1, n2), alternative="two.sided", correct=FALSE)
