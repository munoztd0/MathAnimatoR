
#' Translate a mObject by a vector
#'
#'
#' @param mobject The \code{\link{mObject}} to animate.
#' @param direction The vector by which the mobject is translated. Default is set to \code{\link{UP}}.
#'
#' @examples
#' scene <- init_scene()
#'
#' anim <- circle() |>
#'             flip(LEFT()) |>
#'             translate(UP() * 2) |>
#'             create()
#'
#' play(scene, anim)
#'
#' scene |> render()
#'
#' @name translate a mObject
#' @export
flip <- function(mobject, direction=UP) {
  if (is.function(direction)) {
    direction <- direction()
  }
  mobject$flip(direction)
}


#' Rotate a mObject by a vector
#'
#' @param mobject The \code{\link{mObject}} to animate.
#' @param angle The angle by which the mobject is rotated.
#'
#' @examples
#' scene <- init_scene()
#'
#' anim <- circle() |>
#'            flip(LEFT()) |>
#'            rotate(-3 * pi / 8) |>
#'            create()
#'
#' play(scene, anim)
#'
#' scene |> render()
#'
#' @name rotate a mObject
#' @export
rotate <- function(mobject, angle) {
  mobject$rotate(angle)
}