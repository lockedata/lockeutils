
<!-- README.md is generated from README.Rmd. Please edit that file -->

# lockeutils

[![Project Status: WIP – Initial development is in progress, but there
has not yet been a stable, usable release suitable for the
public.](https://www.repostatus.org/badges/latest/wip.svg)](https://www.repostatus.org/#wip)
[![Travis build
status](https://travis-ci.org/lockedata/lockeutils.svg?branch=master)](https://travis-ci.org/lockedata/lockeutils)
[![Coverage
status](https://coveralls.io/repos/github/lockedata/lockeutils/badge.svg)](https://coveralls.io/r/lockedata/lockeutils?branch=master)

The goal of lockeutils is to provide some common tools to the Locke Data
team.

## Installation

``` r
remotes::install_github("lockedata/lockeutils")
```

And then re-start your R session.

At the first package loading, `lockeutils` should guide you to install
fonts. We’ll update instructions here based on your experience.

## ggplot2 theme

``` r
library("ggplot2")
library("lockeutils")
df <- data.frame(
gp = factor(rep(letters[1:3], each = 10)),
y = rnorm(30)
)
ggplot(df, aes(gp, y)) +
  geom_point() +
  ggtitle("wow title LHS great",
          subtitle = "nice plot") +
  theme_ld()
```

<img src="man/figures/README-unnamed-chunk-1-1.png" width="100%" />

## colour scale

For no more than 3 classes.

``` r

ggplot(mtcars, aes(factor(cyl), fill = factor(vs))) +
geom_bar() +
theme_ld() +
scale_fill_ld()
```

<img src="man/figures/README-unnamed-chunk-2-1.png" width="100%" />

``` r

ggplot(iris, aes(Sepal.Length, Sepal.Width, color = Species)) +
  geom_point() +
  theme_ld() +
   scale_color_ld()
```

<img src="man/figures/README-unnamed-chunk-2-2.png" width="100%" />

``` r

ggplot(diamonds[diamonds$color %in% unique(diamonds$color)[1:6],]) + 
  geom_point(aes(x = carat, 
                 y = price, 
                 color = color)) +
  theme_ld() +
   scale_color_ld()
```

<img src="man/figures/README-unnamed-chunk-2-3.png" width="100%" />

## Colours on their own

``` r
lockeutils::get_ld_colours()
#> # A tibble: 7 x 2
#>   colour_name colour_hex
#>   <chr>       <chr>     
#> 1 blue        #2165b6   
#> 2 orange      #e8830c   
#> 3 teal        #3cb4b8   
#> 4 red         #cf4729   
#> 5 green       #34ba17   
#> 6 pink        #c04aa9   
#> 7 grey        #4d4d4d
```

## Contributing

Wanna report a bug or suggest a feature? Great stuff\! For more
information on how to contribute check out [our contributing
guide](.github/CONTRIBUTING.md).

Please note that this R package is released with a [Contributor Code of
Conduct](CODE_OF_CONDUCT.md). By participating in this package project
you agree to abide by its terms.
