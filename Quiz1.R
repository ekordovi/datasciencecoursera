read.csv("hw1_data.csv")

x <- read.csv("hw1_data.csv")

# extracting first 2 rows of DF
x[1:2,]
# extracting last 2 rows of DF
x[152:153, ]
# value of ozone in 47th row
x$Ozone[47]
# How many missing values are in the Ozone column of this DF
poo <- x$Ozone
print(poo)
badpoo <- is.na(poo)
goodpoo <- x$Ozone[!badpoo]
missing_Ozone <- 153 - length(goodpoo)
print(missing_Ozone)

# Mean of Ozone column 
goodpoo
MEEN_ozone <- mean(goodpoo)
print(MEEN_ozone)

# extract subset of rows of dF where Ozone > 31 & Temp > 90.
Fir <- x[x$Ozone > 31 & x$Temp > 90,  ]
print(Fir)

# removing NA values
good_Fir <- Fir[complete.cases(Fir),]

# calc mean of Solar.R in the Fir subset of x
mean_solar <- mean(good_Fir$Solar.R)
print(mean_solar)

# what is the mean of "Temp" when "Month" is equal to 6?
blah <- x[x$Month == 6, ]
answer <- mean(blah$Temp)
print(answer)

# what was the max Ozone value in month of may (month = 5)
blah2 <- x[x$Month == 5, ]
good_blah2 <- blah2[complete.cases(blah2),]
answer20 <- max(good_blah2$Ozone)
print(answer20)
