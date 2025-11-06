##수도권의 화학물질 배출량
#파일 불러오기
capital_data <- read.csv("C:/Downloads/수도권_지역별_화학물질_배출량.csv", fileEncoding="EUC-KR")

#데이터 선별
combined_cap <- c(capital_data$대구광역시, capital_data$부산광역시, capital_data$서울특별시)

#히스토그램
hist(combined_cap, breaks=10, right=F, main="수도권의 화학물질 배출량", xlab="배출량(kg/년)", ylab="빈도")

#평균, 중앙값, 최빈값
mean(combined_cap)
median(combined_cap)
which.max(table(combined_cap))

#최빈 구간 확인
binned_cap <- cut(combined_cap, breaks=10)
talbe(binned_cap)

#최소값, 최대값, 범위, 사분위수, 표준편차
min(combined_cap)
max(combined_cap)
range(combined_cap)
quantile(combined_cap)
IQR(combined_cap)
sd(combined_cap)

##중부지역의 화학물질 배출량
#파일 불러오기
cen_data <- read.csv("C:/Downloads/중부_지역별_화학물질_배출량.csv", fileEncoding="EUC-KR")

#데이터 선별
combined_cen <- c(cen_data$강원특별자치도, capital_data$경기도, capital_data$충청남도)

#히스토그램
hist(combined_cen, breaks=10, right=F, main="중부 지역의 화학물질 배출량", xlab="배출량(kg/년)", ylab="빈도")

#평균, 중앙값, 최빈값
mean(combined_cen)
median(combined_cen)
which.max(table(combined_cen))

#최빈 구간 확인
binned_cen <- cut(combined_cen, breaks=10)
talbe(binned_cen)

#최소값, 최대값, 범위, 사분위수, 표준편차
min(combined_cen)
max(combined_cen)
range(combined_cen)
quantile(combined_cen)
IQR(combined_cen)
sd(combined_cen)

##남부지역의 화학물질 배출량
#파일 불러오기
nor_data <- read.csv("C:/Downloads/남부_지역별_화학물질_배출량.csv", fileEncoding="EUC-KR")

#데이터 선별
combined_nor <- c(cen_data$경상남도, capital_data$전라남도, capital_data$제주특별자치도)

#히스토그램
hist(combined_nor, breaks=10, right=F, main="남부 지역의 화학물질 배출량", xlab="배출량(kg/년)", ylab="빈도")

#평균, 중앙값, 최빈값
mean(combined_nor)
median(combined_nor)
which.max(table(combined_nor))

#최빈 구간 확인
binned_nor <- cut(combined_nor, breaks=10)
talbe(binned_nor)

#최소값, 최대값, 범위, 사분위수, 표준편차
min(combined_nor)
max(combined_nor)
range(combined_nor)
quantile(combined_nor)
IQR(combined_nor)
sd(combined_nor)
