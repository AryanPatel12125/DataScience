new_string = "Hello World!!!"
print(new_string)

# always use " c "  for combined / batch datatypes.
batch = c("Number1","Number2","Number3")

# c = vector --> its basically more like an array but not exactly an array. same types of elements only
series_of_numbers = c(1:101)
print(series_of_numbers)

# list : its a list duh!! difference in type of elements used
list1 = list(c(1:100),69.6969,cos)
print(list1)

# matrix :
# by default the matrix is arranged by columns

matrix1 = matrix(c('a','b','c','d','e','f'),nrow = 2,ncol = 3)
print(matrix1)

matrix2 = matrix(c('a','b','c','d','e','f'),nrow = 2,ncol = 3, byrow = TRUE)
print(matrix2)

# transpose 
n = t(matrix1)
n
# ye le tera transposed matrix
getwd()


temp1 = c(1,2,3,4,5)
temp2 = c(6,7,8,9,10)

bind1 = cbind(temp1,temp2)
bind2 = rbind(temp1,temp2)

print(bind1)
print(bind2)

#arrays : arrays can be multidimensional
array1 = array(c("Fingertips","Data Science","DIM"),dim = c(3,3,2))
print(array1)

# type conversion to factor in R
class(bind1)

factor1 = factor(bind1)

print(factor1)
class(factor1)


# creating a dataframe
BMI = data.frame(
  Name = c("Chaman","Aryan","HogiKoi"),
  gender = c("Male","Male","Female"),
  height = c(152,188.3,165),
  weight = c(81,86,78),
  Age = c(42,17,26)
)
print(BMI)
