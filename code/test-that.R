#source library
library(testthat)
#source all functions in folder
functions = list.files("code/functions", pattern="*.R", full.names = TRUE)
sapply(functions, source, .GlobalEnv)

#run all tests
test_dir("code/tests")