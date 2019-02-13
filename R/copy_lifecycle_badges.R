#' Embed a lifecycle badge in documentation
#'
#' @description
#' 
#' (From <https://github.com/r-lib/rlang/blob/master/R/compat-lifecycle.R>)
#'
#' Use `lifecycle()` within a `Sexpr` macro to embed a
#' [lifecycle](https://www.tidyverse.org/lifecycle/) badge in your
#' documentation. The badge should appear first in the description:
#'
#' ```
#' \Sexpr[results=rd, stage=render]{mypkg:::lifecycle("questioning")}
#' ```
#'
#' The badge appears as an image in the HTML version of the
#' documentation. To make them available in your package, visit
#' <https://github.com/r-lib/rlang/tree/master/man/figures> and copy
#' all the files starting with `lifecycle-` in your `man/figures/`
#' folder.
#'
#' @param stage A lifecycle stage as a string, one of:
#'   `"experimental"`, `"maturing"`, `"stable"`, `"questioning"`,
#'   `"archived"`, `"soft-deprecated"`, `"deprecated"`, `"defunct"`.
#'
#' @name lifecycle
NULL

#' Copy into ./man/files the figures required to support lifecycle badges.
#' 
#' \Sexpr[results=rd, stage=render]{fgeo.template:::lifecycle("maturing")}
#' 
#' To support lifecycle badges you need to first run 
#' `use_template("compat-lifecycle.R", package = "fgeo.template")`. See also
#' <https://github.com/r-lib/rlang/blob/master/R/compat-lifecycle.R>.
#'
#' @param new_path Destination path of the copied figures.
#'
#' @return Invisible `new_path`.
#' @export
#'
#' @examples
#' \dontrun{
#' # This creates a file in the root of your package. Move it to R/
#' use_template("compat-lifecycle.R", package = "fgeo.template")
#' # This adds the images for the badges into man/figures
#' copy_lifecycle_figures()
#' }
copy_lifecycle_figures <- function(new_path = here::here("man", "figures")) {
  if (!fs::dir_exists(new_path)) {
    fs::dir_create(new_path)
  }
  figs_path <- fs::dir_ls(
    system.file("figures", package = "fgeo.template")
  )
  figs_name <- fs::path_file(figs_path)
  
  fs::file_copy(
    figs_path,
    new_path = fs::path(new_path, figs_name)
  )
  
  invisible(new_path)
}
