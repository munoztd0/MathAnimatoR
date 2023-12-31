% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mObject.R
\name{create a circle}
\alias{create a circle}
\alias{circle}
\title{A circle.}
\usage{
circle(radius = 1, color = manim$RED, ...)
}
\arguments{
\item{radius}{The radius of the circle.}

\item{color}{The color of the shape. Default is set to \code{RED}.}

\item{...}{Additional arguments to be passed to \code{\link{Arc}} object.}
}
\description{
A circle.
}
\examples{
scene <- init_scene()

anim <- circle() |>
             flip(LEFT()) |>
             rotate(-3 * pi / 8) |>
             create()

play(scene, anim)

scene |> render()

}
