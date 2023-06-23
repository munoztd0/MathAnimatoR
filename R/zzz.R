local <- new.env()

.onAttach <- function(libname, pkgname){
  if(!grepl(x = R.Version()$arch, pattern = "64")){
    warning("This package only works on 64bit architectures due to a dependency on torch. You are not running a 64bit version of R.")
  }
}


.onLoad <- function(libname, pkgname) {
  reticulate::configure_environment(pkgname)

  #packageStartupMessage("- Loading golgotha BERT code")

  #oldwd <- getwd()
  #on.exit(setwd(oldwd))
  #setwd(system.file(package = "golgotha", "python"))
  manim <- import("manim", convert = TRUE, delay_load = TRUE)
  assign("manim", value = manim, envir = parent.env(local))
  #pyscript <- system.file(package = "golgotha", "python", "BERT.py")
  #source_python(pyscript, envir = nlp, convert = TRUE)

}


# known_architectures <- c("BERT", "GPT", "GPT-2", "CTRL", "Transformer-XL", "XLNet", "XLM", "DistilBERT", "RoBERTa", "XLM-RoBERTa",
#                          "GPT-2-LMHead")
# validate_architecture <- function(architecture){
#   if(!architecture %in% known_architectures){
#     stop(sprintf("%s not in list of known architectures: %s", paste(architecture, collapse = ", "), paste(known_architectures, collapse = ", ")))
#   }
# }

#' @import reticulate
NULL