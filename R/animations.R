#' Incrementally show a mObject
#'
#' @param mobject The \code{\link{mObject}} to animate.
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
#' @name create mObject
#' @export
create <- function(mobject){
  manim$Create(mobject)
}


#' Fade-Out effect for mObjects
#'
#'
#' @param mobject The \code{\link{mObject}} to animate.
#'
#' @examples
#' scene <- init_scene()
#'
#' anim <- fadeout(circle(), shift= DOWN)
#'
#' play(scene, anim)
#'
#' scene |> render()
#'
#' @name fade out mObject
#' @export
fadeout <- function(mobject){
  manim$FadeOut(mobject)
}
#@param target_position The position to which the mobject moves while being faded out. In case another mobject is given as target position, its center is used.
#@param shift The vector by which the mobject shifts while being faded out.
#@param scale The factor by which the mobject is scaled while being faded out.


#' Transmutes a mObject into a target mObject
#'
#'
#' @param mobject The \code{\link{mObject}} to animate.
#' @param target_object The target of the transformation.
#' @param path_func A function defining the path that the points of the \code{\link{mObject}} are being moved long until they match the points of the \code{\link{target_mobject}}.
#' @param path path_arc The arc angle (in radians) that the points of \code{\link{mObject}} will follow to reach the points of the target if using a circular path arc, see \code{\link{path_arc_centers}}.
#' @param path path_arc_axis The axis to rotate along if using a circular path arc, see \code{\link{path_arc_centers}}.
#' @param path path_arc_centers The center of the circular arcs along which the points of \code{\link{mObject}} are moved by the transformation. If this is set and \code{\link{path_func}} is not set, then a \code{\link{path_along_circles}} path will be generated
#'        using the \code{\link{path_arc}}parameters and stored in \code{\link{path_func}} If \code{\link{path_func}}i s set, this and the
#'        other \code{\link{path_arc}}fields are set as attributes, but a \code{\link{path_func}} is not generated from it. Controls which mobject is replaced when the transformation is complete. If set to True, \code{\link{mObject}} will be removed from the scene and \code{\link{target_mobject}} will replace it. Otherwise, \code{\link{target_mobject}} is never added and \code{\link{mObject}} just takes its shape.
#'
#' @examples
#' scene <- init_scene()
#'
#' pink <- "#D147BD"
#'
#' anim = square() |>
#'      transmute( circle() |>
#'      set_fill(pink, opacity=0.5) )
#'
#' play(scene, anim)
#'
#' scene |> render()
#'
#' @name transmute mObject
#' @export
transmute <- function(mobject, target){
  manim$Transform(mobject, target)
}