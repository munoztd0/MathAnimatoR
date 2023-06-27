# MathAnimatoR
Manim is an engine for precise programmatic animations, designed for creating explanatory math videos with R.



```{r}

library(MathAnimatoR)

scene <- init_scene()

mCircle <- circle()
mSquare <- square()

pink <- "#D147BD"

anim1 <- mCircle |>
            flip(LEFT()) |>
            rotate(-3 * pi / 8) |>
            create()

anim2 <- mSquare|>
            transmute( mCircle |> set_fill(pink, opacity=0.5) )

anim3 <- mSquare |>
            fadeout()

play(scene, anim1)

play(scene, anim2)

play(scene, anim3)


scene |> render()


```



https://github.com/munoztd0/MathAnimatoR/assets/43644805/3a37c3b2-de49-4bf2-aaa9-f0027e5060ab


