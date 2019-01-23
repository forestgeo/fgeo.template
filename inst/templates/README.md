
<!-- README.md is generated from README.Rmd. Please edit that file -->

# <img src="https://i.imgur.com/vTLlhbp.png" align="right" height=88 /> EDIT-DESCRIPTION

EDIT: ADD BADGES CREATED WITH:

``` r
use_lifecycle_badge("experimental")
use_cran_badge()
```

EDIT: CONSIDER ADDING BADGES CREATED WITH:

    # In .travis.yml consider adding `warnings_are_errors: false`
    # IMPORTANT (to avoid errors due to low limit rate):
    # Get GITHUB_PAT with usethis::edit_r_environ() and set it as environmental 
    # variablel on travis (see https://github.com/forestgeo/learn/issues/148)
    use_travis()
    
    use_coverage("coveralls")

The goal of **EDIT-PACKAGE-NAME** is to …

## Installation

Install the latest stable version of **EDIT-PACKAGE-NAME** with:

``` r
# install.packages("devtools")
devtools::install_github("forestgeo/EDIT-PACKAGE-NAME@*release")
```

Install the development version of **EDIT-PACKAGE-NAME** with:

``` r
# install.packages("devtools")
devtools::install_github("forestgeo/EDIT-PACKAGE-NAME")
```

Or [install all **fgeo** packages in one
step](https://forestgeo.github.io/fgeo/index.html#installation).

## Example

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
    usethis::use_template("ISSUE_TEMPLATE.md", package = "fgeo.template")

  - [Getting help](SUPPORT.md).
  - [Contributing](CONTRIBUTING.md).
  - [Contributor Code of Conduct](CODE_OF_CONDUCT.md).

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

![](man/figures/README-pressure-1.png)<!-- -->

In that case, don’t forget to commit and push the resulting figure
files, so they display on GitHub\!
