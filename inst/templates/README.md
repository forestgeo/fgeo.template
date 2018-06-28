
<!-- README.md is generated from README.Rmd. Please edit that file -->

# <img src="https://i.imgur.com/33dDP1P.png" align="right" height=88 /> EDIT-DESCRIPTION

EDIT: ADD BADGES CREATED WITH:

``` r
use_lifecycle_badge("experimental")
use_cran_badge()
```

EDIT: CONSIDER ADDING BADGES CREATED WITH:

    # In .travis.yml consider adding `warnings_are_errors: false`
    use_travis()
    
    use_coverage("coveralls")

The goal of **EDIT-PACKAGE-NAME** is to …

## Installation

[Install all **fgeo** packages in one
step](https://forestgeo.github.io/fgeo/index.html#installation)

    # install.packages("remotes")
    remotes::install_github("EDIT-OWNER/EDIT-PACKAGE-NAME")

For details on how to install packages from GitHub, see [this
article](https://goo.gl/dQKEeg).

## Example

This is a basic example which shows you how to solve a common problem:

``` r
## TODO: Add example
```

[Get started with
**fgeo**](https://forestgeo.github.io/fgeo/articles/fgeo.html)

## Information

EDIT: Run this chunk then delete it: TODO: Move files to .github/ but
refer to (FILE.md), not (.github/FILE.md)

    usethis::use_template("SUPPORT.md", package = "fgeo.template")
    usethis::use_template("CONTRIBUTING.md", package = "fgeo.template")
    usethis::use_template("CODE_OF_CONDUCT.md", package = "fgeo.template")

  - [Getting help](SUPPORT.md).
  - [Contributing](CONTRIBUTING.md).
  - [Contributor Code of Conduct](CODE_OF_CONDUCT.md).

## Acknowledgments

Thanks to all partners of ForestGEO, for sharing their ideas and code.

## READ AND DELETE THIS SECTION

What is special about using `README.Rmd` instead of just `README.md`?
You can include R chunks like so:

``` r
summary(cars)
#>      speed           dist       
#>  Min.   : 4.0   Min.   :  2.00  
#>  1st Qu.:12.0   1st Qu.: 26.00  
#>  Median :15.0   Median : 36.00  
#>  Mean   :15.4   Mean   : 42.98  
#>  3rd Qu.:19.0   3rd Qu.: 56.00  
#>  Max.   :25.0   Max.   :120.00
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date.

You can also embed plots, for example:

![](README-pressure-1.png)<!-- -->

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
