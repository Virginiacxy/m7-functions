# Exercise 2: writing and executing functions (II)
install.packages(stringr)
library(stringr)
# Write a function `CompareLength` that takes in 2 vectors, and returns the sentence:
# "The difference in lengths is N"
CompareLength <- function(a, b) {
  difference <- abs(length(a) - length(b))
  answer <- str_c("The difference in lengths is ", difference)
  return(answer)
}

# Pass two vectors of different length to your `CompareLength` function
CompareLength(c(1,2),c(1))

# Write a function `DescribeDifference` that will return one of the following statements:
# "Your first vector is longer by N elements"
# "Your second vector is longer by N elements"
DescribeDifference <- function(a, b) {
  N <- abs(length(a) - length(b))
  if(length(a) > length(b)) {
    return(str_c("Your first vector is longer by ", N, " elements"))
  } else {
    return(str_c("Your second vector is longer by ", N," elements") )
  }
}

# Pass two vectors to your `DescribeDifference` function
DescribeDifference(c(1,2),c(1))

### Bonus ###

# Rewrite your `DescribeDifference` function to tell you the name of the vector which is longer
DescribeDifference <- function(a, b) {
  if(length(a) > length(b))
    return(vector,deparse(substitute(a)))
  else
    return(b)
}