#' @title weighted_mean
#'
#' Weighted Arithmetic Mean
#'
#' This function calculates a weighted mean.
#'
#' @param data an object containing the values whose weighted mean is to be computed.
#' @param weight a numerical vector of weights the same length as data giving the weights to use for elements of data.
#' @param na.rm logical. Should missing values (including NaN) be removed?
#' @return a length-one numeric vector
#' @export

weighted_mean <- function(data, weight = rep(1,length(data)), na.rm = TRUE){
  result <- sum (data*weight, na.rm = na.rm) / sum(weight, na.rm = na.rm)
}
