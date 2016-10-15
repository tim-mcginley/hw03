#Residual sum of squares.  Input is a lm() object, output is one numeric value.
residual_sum_squares <- function(x) {
  RSS <- sum((x[[2]])^2)
  return(RSS)
}

#Total sum of squares. Input is a lm() object, output is one numeric value.
total_sum_squares <- function(y) {
  TSS <- sum((y[[12]][[1]] - mean(y[[12]][[1]]))^2)
  return(TSS)
}

#R^2 calculation. Input is a lm() object, output is one numeric value.
r_squared <- function(z) {
  r_2 <- 1 - (residual_sum_squares(z)/total_sum_squares(z))
  return(r_2)
}

#F-Statistic calculation. Input is a lm() object, output is one numeric value.
f_statistic <- function(f, p = length(f$model) - 1, n = length(f$model[[1]])) {
  fstat <- ((total_sum_squares(f) - residual_sum_squares(f)) / p) / (residual_sum_squares(f) / (n - p - 1))
  return(fstat)
}

#RSE. Input is a lm() object, output is one numeric value.
residual_std_error <- function(e, p = length(e$model) - 1, n = length(e$model[[1]])) {
  rse <- sqrt(residual_sum_squares(e) /(n - p - 1))
  return(rse)
}
