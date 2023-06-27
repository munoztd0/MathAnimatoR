
config <- function(){

    manim_configs <- reticulate::import("manim._config", delay_load = TRUE)

    parser <- manim_configs$make_config_parser()

    manim_configs$ManimConfig()$digest_parser(parser)

}


