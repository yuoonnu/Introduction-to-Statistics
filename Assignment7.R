##수축기 혈압 데이터의 구간추정
#파일 불러오기
data1 <- read.csv("C:/Downloads/수축기혈압.csv", fileEncoding="EUC-KR")

#필요한 데이터만 추출
blood_data <- data1[data$성별코드 == 2 & data1$연령대코드 >= 4 & data1$연령대코드 < 6, "수축기혈압"]

#표본 추출
sample_data1 <- sample(blood_data, 500, replace=FALSE)

#히스토그램
hist(sample_data1, breaks=10, right=F, main="20대 여성의 수축기혈압 분포", xlab="수축기 혈압 (mmHg)", ylab="빈도", col="lavender")

#평균, 분산 확인
mean(sample_data1)
var(sample_data1)

#모분산을 알 때의 구간추정
one.sample.z.confidence.interval <- function(x, confidence.level){
  n <- length(x)
  xbar <- mean(x)
  se <- sd(x)/sqrt(n)
  alpha.half <- (1-confidence.level)/2
  z.alpha.half <- qnorm(1-alpha.half)
  return(c(xbar - z.alpha.half * se, xbar + z.alpha.half * se))
}

n1 <- one.sample.z.confidence.interval(sample_data1, confidence.level=0.9)
n2 <- one.sample.z.confidence.interval(sample_data1, confidence.level=0.95)

width_n90 <- n1[2] - n1[1]
width_n95 <- n2[2] - n2[1]
print(n1); print(n2); print(width_n90); print(width_n95)

#모분산을 모를 때의 구간추정
one.sample.t.confidence.interval <- function(x, confidence.level){
  n <- length(x)
  xbar <- mean(x)
  se <- sd(x)/sqrt(n)
  alpha.half <- (1-confidence.level)/2
  t.alpha.half <- qt(1-alpha.half, n-1)
  return(c(xbar - t.alpha.half*se, xbar+t.alpha.half*se))
}

t1<-one.sample.t.confidence.interval(sample_data1, confidence.level = 0.9)
t2<-one.sample.t.confidence.interval(sample_data1, confidence.level = 0.95)

width_t90 <- t1[2] - t1[1]
width_t95 <- t2[2] - t2[1]
print(t1); print(t2); print(width_t90); print(width_t95)


##미세먼지 농도 데이터의 구간추정
#파일 불러오기
data2 <- read.csv("C:/Downloads/기간별_일평균_대기환경_정보_2024년.csv", fileEncoding="UTF-8")

#필요한 데이터만 추출
air_data <- data2[data2$측정소명 == "노원구", "미세먼지"]

#표본 추출
sample_data2 <- sample(air_data, 20, replace = FALSE)

#히스토그램
hist(sample_data2, breaks=10, right=F, main="노원구의 미세먼지 농도", xlab="미세먼지 농도 (㎍/㎥)", ylab="빈도", col="lavender")

#평균, 분산 확인
mean(sample_data2)
var(sample_data2)

#모분산을 알 때의 구간추정
N1<-one.sample.z.confidence.interval(sample_data2, confidence.level=0.9)
N2<-one.sample.z.confidence.interval(sample_data2, confidence.level=0.95)

width_N90 <- N1[2] - N1[1]
width_N95 <- N2[2] - N2[1]
print(N1); print(N2); print(width_N90); print(width_N95)

#모분산을 모를 때의 구간추정
T1<-one.sample.t.confidence.interval(sample_data2, confidence.level = 0.9)
T2<-one.sample.t.confidence.interval(sample_data2, confidence.level = 0.95)

width_T90 <- T1[2] - T1[1]
width_T95 <- T2[2] - T2[1]
print(T1); print(T2); print(width_T90); print(width_T95)
