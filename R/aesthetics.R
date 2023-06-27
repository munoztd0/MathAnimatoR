#' Set the fill color and fill opacity of a mObject.
#'
#'
#' @param color Fill color of the \code{\link{mObject}}.
#' @param opacity Fill opacity of the \code{\link{mObject}}.
#' @param family If \code{True}, the fill color of all submobjects is also set. Default set as TRUE.
#'
#' @examples
#' scene <- init_scene()
#'
#' pink <- "#D147BD"
#'
#' anim = square() |>
#'      transmute( circle() |>
#'      set_fill(color=pink, opacity=0.5) )
#'
#' play(scene, anim)
#'
#' scene |> render()
#'
#' @name transmutes mObjects
#' @export
set_fill <- function(mobject, color=NULL, opacity=1, family=TRUE){
  mobject$set_fill(color, opacity, family)
}
