#' @title weighted_graph
#'
#' Graphical representation of weighted data set
#'
#' This function calculates the weighted mean and plots it alongside data and
#' weight. It requires numeric vectors for values and weights and returns a
#' graphic.
#'
#' @param data value vector
#' @param weight weights vector
#' @return Graph for data and weight with weighted mean.
#' @export

weighted_graph <- function(data, weight){
  result <- sum (data*weight) / sum(weight)
  plot <- ggplot2::ggplot(data.frame(data,weight), ggplot2::aes(x = data, y = weight)) +
    ggplot2::geom_point() +
    ggplot2::geom_vline(xintercept = result, linetype = "dashed") +
    ggplot2::ggtitle(result) +
    ggplot2::theme_bw()
  return(plot)
}
