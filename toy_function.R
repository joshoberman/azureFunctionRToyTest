if (!require('jsonlite')) install.packages('jsonlite')

library(jsonlite)

toy_function <- function(){
  mean(c(1,2,3))
}

toJSON(list("in" = c(1,2,3), "out" = toy_function()))