# nocov start --- compat-lifecycle --- 2019-01-02 Wed 13:22

# This file serves as a reference for currently unexported rlang
# lifecycle functions. Please find the most recent version in rlang's
# repository. These functions require rlang in your `Imports`
# DESCRIPTION field but you don't need to import rlang in your
# namespace.

lifecycle <- function(stage) {
  url <- paste0("https://www.tidyverse.org/lifecycle/#", stage)
  img <- lifecycle_img(stage, url)

  sprintf(
    "\\ifelse{html}{%s}{\\strong{%s}}",
    img,
    upcase1(stage)
  )
}

lifecycle_img <- function(stage, url) {
  file <- sprintf("lifecycle-%s.svg", stage)
  stage_alt <- upcase1(stage)

  switch(stage,

    experimental = ,
    maturing = ,
    stable = ,
    questioning = ,
    retired = ,
    archived =
      sprintf(
        "\\out{<a href='%s'><img src='%s' alt='%s lifecycle'></a>}",
        url,
        file.path("figures", file),
        stage_alt
      )
   ,

    `soft-deprecated` = ,
    deprecated = ,
    defunct =
      sprintf(
        "\\figure{%s}{options: alt='%s lifecycle'}",
        file,
        stage_alt
      ),

    rlang::abort(sprintf("Unknown lifecycle stage `%s`", stage))

  )
}
upcase1 <- function(x) {
  substr(x, 1, 1) <- toupper(substr(x, 1, 1))
  x
}


# nocov end
