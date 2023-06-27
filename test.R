lib(MathAnimatoR)
lib(dplyr)

pink <- "#D147BD"

#workflow in building blocks
# 1. create Mobjects

mObjects <- list(
    circle = manim$Circle(),
    square = manim$Square()
)

# 2. place  Mobjects
placing  <- function(){
    square$flip(manim$RIGHT)
    square$rotate(-3 * manim$pi / 8)
    circle$set_fill(pink, opacity=0.5)
}

# 3. Animate  Mobjects
animate  <- list(
    one = manim$Create(square),
    two = manim$Transform(square, circle),
    three = manim$FadeOut(circle)
)

render <- function(mobjects, placement, animations){
    scene <- manim$Scene()
    list2env(mobjects, envir = environment())
    placing()
    for(i in seq_along(animations)){
        scene$play(animations[[i]])
    }
    scene$render()
}

render(mobjects=mObjects, placement=placing(), animations=animate)

# 2. create objects
# 3. add objects to scene
# 4. play scene
# 5. render scene


scene <- manim$Scene()
circle <- manim$Circle()
square <- manim$Square()

manim$Create(square) |> scene$play()  |> 
manim$Transform(square, circle) |> scene$play() |> 
scene$render()

manim$FadeOut(circle) |> scene$play()
scene$render()

SquareToCircle <- function() {
 scene <- manim$Scene()
  circle <- manim$Circle()
  square <- manim$Square()
  square$flip(manim$RIGHT)
  square$rotate(-3 * manim$pi / 8)
  circle$set_fill(manim$PINK, opacity=0.5)
#   scene$add(square)
  scene$play(manim$Create(square))
  scene$play(manim$Transform(square, circle))
  scene$play(manim$FadeOut(circle))
  scene$render()
}

SquareToCircle()

