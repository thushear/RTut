v <- TRUE 
print(class(v))
v <- 23.5
 print(class(v))
	
v <- 2L 
print(class(v))
v <- 2+5i 
print(class(v))

v <- "TRUE" 
print(class(v))

v <- charToRaw("Hello")
print(v) 
print(class(v))
# Create a vector.
apple <- c('red','green',"yellow")
print(apple)
# Get the class of the vector.
print(class(apple))

# Create a list.
list1 <- list(c(2,5,3),21.3,sin)
# Print the list.
print(list1)

# Create a matrix.
M = matrix( c('a','a','b','c','b','a'), nrow=2,ncol=3,byrow = TRUE)
print(M)


# Create an array.
a <- array(c('green','yellow',"red"),dim=c(4,4,3))
print(a)

# Create a vector.
apple_colors <- c('green','green','yellow','red','red','red','green')

# Create a factor object.
factor_apple <- factor(apple_colors)

# Print the factor.
print(factor_apple)
print(nlevels(factor_apple))

# Create the data frame.
BMI <- 	data.frame(
			gender = c("Male", "Male","Female"), 
			height = c(152, 171.5, 165), 
			weight = c(81,93, 78),
			Age =c(42,38,26)
			)
print(BMI)



# Assignment using equal operator.
var.1 = c(0,1,2,3)           

# Assignment using leftward operator.
var.2 <- c("learn","R")   

# Assignment using rightward operator.   
c(TRUE,1) -> var.3          


print(var.1)
cat ("var.1 is ", var.1 ,"\n")
cat ("var.2 is ", var.2 ,"\n")
cat ("var.3 is ", var.3 ,"\n")



var_x <- "Hello"
cat("The class of var_x is ",class(var_x),"\n")

var_x <- 34.5
cat("  Now the class of var_x is ",class(var_x),"\n")

var_x <- 27L
cat("   Next the class of var_x becomes ",class(var_x),"\n")



print(ls())

# List the variables starting with the pattern "var".
print(ls(pattern="var"))

#算术运算符
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v+t)
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v-t)
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v*t)

v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v/t)


v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%%t)
v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v%/%t)

v <- c( 2,5.5,6)
t <- c(8, 3, 4)
print(v^t)

#关系运算符
	
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v>t)
v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v < t)


v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v==t)

v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v<=t)

v <- c(2,5.5,6,9)
t <- c(8,2.5,14,9)
print(v!=t)


v <- c(3,1,TRUE,2+3i)
t <- c(4,1,FALSE,2+3i)
print(v&t)

v <- c(3,0,TRUE,2+2i)
t <- c(4,0,FALSE,2+3i)
print(v|t)


v <- c(3,0,TRUE,2+2i)
print(!v)

v <- c(3,0,TRUE,2+2i)
t <- c(0,3,TRUE,2+3i)
print(v&&t)

v <- c(0,0,TRUE,2+2i)
t <- c(1,3,TRUE,2+3i)
print(v||t)

#赋值运算符
v1 <- c(3,1,TRUE,2+3i)
v2 <<- c(3,1,TRUE,2+3i)
v3 = c(3,1,TRUE,2+3i)
print(v1)
print(v2)
print(v3)


c(3,1,TRUE,2+3i) -> v1
c(3,1,TRUE,2+3i) ->> v2 
print(v1)
print(v2)


v <- 2:8
print(v) 


v1 <- 8
v2 <- 12
t <- 1:10
print(v1 %in% t) 
print(v2 %in% t) 


M = matrix( c(2,6,5,1,10,4), nrow=2,ncol=3,byrow = TRUE)
print(M )
print(t(M))
t = M %*% t(M)
print(t) 

#if语句
x <- 30L
if(is.integer(x)){
   print("X is an Integer")
}


x <- c("what","is","truth")
if("Truth" %in% x){
   print("Truth is found")
} else {
   print("Truth is not found")
}

x <- c("what","is","truth")
if("Truth" %in% x){
   print("Truth is found the first time")
} else if ("truth" %in% x) {
   print("truth is found the second time")
} else {
   print("No truth found")
}

x <- switch(
  1,
  "1",
  "1",
  "3",
  "4"
)
print(x)




#内置函数
# Create a sequence of numbers from 32 to 44.
print(seq(32,44))

# Find mean of numbers from 25 to 82.
print(mean(25:82))

# Find sum of numbers frm 41 to 68.
print(sum(1:100))

#用户定义函数
# Create a function to print squares of numbers in sequence.
new.function <- function(a) {
  for(i in 1:a) {
		b <- i^2
		print(b)
		}
}

# Call the function new.function supplying 6 as an argument.
new.function(21)

#调用函数不带参数
# Create a function without an argument.
new.function <- function() {
		for(i in 1:5) {
		print(i^2)
		}
			  }	

# Call the function without supplying an argument.
new.function()

#调用函数带有参数值（按位置和名称）
# Create a function with arguments.
new.function <- function(a,b,c) {
		result <- a*b+c
		print(result)
}

# Call the function by position of arguments.
new.function(5,3,11)

# Call the function by names of the arguments.
new.function(a=11,b=5,c=3)

#带有调用默认参数的函数
# Create a function with arguments.
new.function <- function(a = 3,b =6) {
		result <- a*b
		print(result)
				     }

# Call the function without giving any argument.
new.function()

# Call the function with giving new values of the argument.
new.function(9,5)

#函数延迟计算
# Create a function with arguments.
new.function <- function(a, b=1) {
	   print(a^2)
	   print(a)
	   print(b)
				}

# Evaluate the function without supplying one of the arguments.
new.function(6)

#有效的字符串示例
a <- 'Start and end with single quote'
print(a)

b <- "Start and end with double quotes"
print(b)

c <- "single quote ' in between double quotes"
print(c)

d <- 'Double quotes " in between single quote'
print(d)


#连接字符串 - paste() 函数
a <- "Hello"
b <- 'How'
c <- "are you? "

print(paste(a,b,c))

print(paste(a,b,c, sep = "-"))

print(paste(a,b,c, sep = "", collapse = ""))

#格式化数字和字符串 - format()函数
# Total number of digits displayed. Last digit rounded off.
result <- format(23.123456789, digits = 9)
print(result)
# Display numbers in scientific notation.
result <- format(c(6, 13.14521), scientific = TRUE)
print(result)

# The minimum number of digits to the right of the decimal point.
result <- format(23.47, nsmall = 5)
print(result)

# Format treats everything as a string.
result <- format(6)
print(result)

# Numbers are padded with blank in the beginning for width.
result <- format(13.7, width = 6)
print(result)

# Left justify strings.
result <- format("Hello",width = 8, justify = "l")
print(result)

# Justfy string with center.
result <- format("Hello",width = 8, justify = "c")
print(result)

#统计字符串的字符数 - ncahr()函数
result <- nchar("Count the number of characters")
print(result)

#改变大小写 - toupper()和 tolower()函数
# Changing to Upper case.
result <- toupper("Changing To Upper")
print(result)

# Changing to lower case.
result <- tolower("Changing To Lower")
print(result)

#提取字符串的一部分 - substring()函数
# Extract characters from 5th to 7th position.
result <- substring("Extract", 5, 7)
print(result)
