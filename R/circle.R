# R/circle.R
#' Create a Circle Animation
#'
#' @export
manim_circle <- function() {
  htmlwidgets::createWidget(
    name = 'manimCircle', 
    x = list(),  # Empty list to satisfy the requirement
    width = 600,
    height = 400,
    package = 'MathAnimatoR'
  )
}