
#' Initialize a scene
#'
#' @param init A \code{\link{Scene}} object.
#'
#'
#' @export
init_scene <- function(init=NULL) {
  manim$Scene()
}

#' Render a scene
#'
#' @param scene A \code{\link{Scene}} object.
#'
#' @export
render <- function(scene) {
  scene$render()
}


#' Play an animation
#'
#' @param scene A \code{\link{Scene}} object.
#' @param animation A \code{\link{Animation}} object.
#'
#' @export
play <- function(scene, animation) {
  scene$play(animation)
}