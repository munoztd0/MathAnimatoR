#' A circle.
#'
#' @param radius The radius of the circle.
#' @param color The color of the shape. Default is set to \code{RED}.
#' @param ... Additional arguments to be passed to \code{\link{Arc}} object.
#'
#' @examples
#' scene <- init_scene()
#'
#' anim <- circle() |>
#'              flip(LEFT()) |>
#'              rotate(-3 * pi / 8) |>
#'              create()
#'
#' play(scene, anim)
#'
#' scene |> render()
#'
#' @name create a circle
#' @export
circle <- function(radius=1, color=manim$RED, ...) {
  manim$Circle(radius, color, ...)
}


#' A square.
#'
#' @param side_length The length of the side of the square. Default is set to \code{2}.
#' @param ... Additional arguments to be passed to \code{\link{Arc}} object.
#'
#' @examples
#' scene <- init_scene()
#'
#' anim <- square() |>
#'              flip(LEFT()) |>
#'              rotate(-3 * pi / 8) |>
#'              create()
#'
#' play(scene, anim)
#'
#' scene |> render()
#'
#' @name create a square
#' @export
square <- function(side_length=2.0, ...) {
  manim$Square(side_length, ...)
}

#' An equilateral triangle
#'
#' @param ... Additional arguments to be passed to \code{\link{RegularPolygon}} object.
#'
#' @examples
#' scene <- init_scene()
#'
#' anim <- triangle() |>
#'              flip(LEFT()) |>
#'              rotate(-3 * pi / 8) |>
#'              create()
#'
#' play(scene, anim)
#'
#' scene |> render()
#'
#' @name create a triangle
#' @export
triangle <- function(...) {
  manim$Triangle(...)
}

