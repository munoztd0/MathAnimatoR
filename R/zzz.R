# Internal package environment to facilitate Python module access
#.sbenv <- new.env(parent = emptyenv())


.onLoad <- function(libname, pkgname) {
  # Manage Python dependencies automatically
  # https://rstudio.github.io/reticulate/articles/python_dependencies.html#-onload-configuration
  # Retrieved 2021-10-05
  #reticulate::configure_environment(pkgname)

  # Check stickleback availability (Config/reticulate doesn't always work)
  if (reticulate::py_module_available("manim")) {
    # Import stickleback modules
    manim <- reticulate::import("manim",
                                    delay_load = TRUE)
     assign("manim", manim, envir = .GlobalEnv)

    # .sbenv$sb_data <- reticulate::import("stickleback.data",
    #                                      delay_load = TRUE)

    # Import utility functions
    # util_path <- system.file("python", package = "rstickleback")
    # .sbenv$util <- reticulate::import_from_path("util",
    #                                             util_path,
    #                                             delay_load = TRUE)
  } else {
    forced <- reticulate::py_config()
    if (is.null(forced$forced)) {
       reticulate::py_install("manim", pip=F)
        manim <- reticulate::import("manim",
                                    delay_load = TRUE)
      assign("manim", manim, envir = .GlobalEnv)
      if (reticulate::py_module_available("manim")) { 
        #message("Python environment configured.")
      } else {
        packageStartupMessage("Python package manim not found.")

      }

    } else {
        message("Python environment is blocked (usually by radian),
                please use raw R or install radian through:
                'conda install -c conda-forge radian'")
      
      manim <- reticulate::import("manim", delay_load = TRUE)
      
      assign("manim", manim, envir = .GlobalEnv)
      
      if (reticulate::py_module_available("manim")) { 
        #message("Python environment configured.")
      } else {
        packageStartupMessage("Python package manim not found.")

      }


    }
  }
}



local <- new.env()

.onAttach <- function(libname, pkgname){
  if(!grepl(x = R.Version()$arch, pattern = "64")){
    warning("This package only works on 64bit architectures due to a dependency on openGL. You are not running a 64bit version of R.")
  }
}


#for later

# .onLoad <- function(libname, pkgname) {
#   reticulate::configure_environment(pkgname)

  #packageStartupMessage("- Loading golgotha BERT code")
  #oldwd <- getwd()
  #on.exit(setwd(oldwd))
  #setwd(system.file(package = "golgotha", "python"))
  #reticulate::py_install("manim", pip=TRUE)
  #manim <- reticulate::import("manim", convert = TRUE, delay_load = TRUE)
  #assign("manim", value = manim, envir = parent.env(local))
  #pyscript <- system.file(package = "golgotha", "python", "BERT.py")
  #source_python(pyscript, envir = nlp, convert = TRUE)

# }


# known_architectures <- c("BERT", "GPT", "GPT-2", "CTRL", "Transformer-XL", "XLNet", "XLM", "DistilBERT", "RoBERTa", "XLM-RoBERTa",
#                          "GPT-2-LMHead")
# validate_architecture <- function(architecture){
#   if(!architecture %in% known_architectures){
#     stop(sprintf("%s not in list of known architectures: %s", paste(architecture, collapse = ", "), paste(known_architectures, collapse = ", ")))
#   }
# }

#' @import reticulate
NULL