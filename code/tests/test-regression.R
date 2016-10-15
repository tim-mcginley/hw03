source("../functions/regression-functions.R")


context("Test that summary statistcs are computed as expected") 


test_that("rss works as expected", {
  # sample multiple regression
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  # sample summary of 'reg'
  regsum <- summary(reg)
  
  expect_equal(residual_sum_squares(reg), sum(reg$residuals^2))

})

test_that("tss works as expected", {
  # sample multiple regression
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  # sample summary of 'reg'
  regsum <- summary(reg)
  
  expect_equal(total_sum_squares(reg), sum((mtcars$mpg - mean(mtcars$mpg))^2))

})

test_that("rse works as expected", {
  # sample multiple regression
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  # sample summary of 'reg'
  regsum <- summary(reg)
  
  expect_equal(residual_std_error(reg), regsum$sigma)
  
  
})

test_that("r^2 works as expected", {
  # sample multiple regression
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  # sample summary of 'reg'
  regsum <- summary(reg)
  
  expect_equal(r_squared(reg), regsum$r.squared)
  
})

test_that("f_statistic works as expected", {
  # sample multiple regression
  reg <- lm(mpg ~ disp + hp, data = mtcars)
  # sample summary of 'reg'
  regsum <- summary(reg)
  
  expect_equal(f_statistic(reg), regsum$fstatistic[1])
})
