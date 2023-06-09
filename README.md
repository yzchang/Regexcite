
<!-- README.md is generated from README.Rmd. Please edit that file -->

**NOTE: This is an example package mostly copied from the online edition
of [R Packages (2e)](https://r-pkgs.org). All credits go to the original
authors.**

# Regexcite

<!-- badges: start -->
<!-- badges: end -->

The goal of Regexcite is to make regular expressions more exciting! It
provides convenience functions to make some common tasks with string
manipulation and regular expressions a bit easier.

## Installation

You can install the development version of Regexcite from
[GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("yzchang/Regexcite")
```

## Usage

A fairly common task when dealing with strings is the need to split a
single string into a plain list of many parts.

This package provides two functions `Regexcite::str_split_one()` and
`Regexcite::str_split_multi()` that split a single character vector by a
single character (i.e. `Regexcite::str_split_one()`) or one or more
character vectors by one or more characters
(i.e. `Regexcite::str_split_multi()`) into a single list of character
vector(s).

## Example

Use `Regexcite::str_split_one()` when the input is know to be a single
string and the pattern is a single character:

``` r
library(Regexcite)
s <- "echo:foxtrot:golf:hotel"
str_split_one(s, ':')
#> [1] "echo"    "foxtrot" "golf"    "hotel"
```

Use `Regexcite::str_split_multi()` when the input contains multiple
strings or the pattern contains multiple characters:

``` r
library(Regexcite)
fruits <- c(
  "apples and oranges and pears and bananas",
  "pineapples and mangos and guavas"
)
str_split_multi(fruits, " and ")
#> [[1]]
#> [1] "apples"     "pineapples" "oranges"    "mangos"     "pears"     
#> [6] "guavas"     "bananas"
```
