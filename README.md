# MathAnimatoR
Manim is an engine for precise programmatic animations, designed for creating explanatory math videos with R.



```{r}

library(MathAnimatoR)

scene <- init_scene()

mCircle <- circle()
mSquare <- square() # create a square

pink <- "#D147BD"

anim1 <- mSquare |>
            flip(direction=LEFT) |>
            rotate(pi / 4) |> # rotate a certain amount
            display()

anim2 <- mSquare|>
            transmute( mCircle |> set_fill(pink, opacity=0.5) ) # interpolate the square into the circle

anim3 <- mSquare |>
            fadeout() #fade out animation


play(scene, anim1)

play(scene, anim2)

play(scene, anim3)


scene |> render()


```



https://github.com/munoztd0/MathAnimatoR/assets/43644805/3a37c3b2-de49-4bf2-aaa9-f0027e5060ab


