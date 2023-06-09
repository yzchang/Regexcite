#' Split a string into a list of substrings separated by the given separator.
#'
#' @param s A character vector with one element to be split.
#' @param sep The separating character to split on. Default: ','
#'
#' @return A character vector of one or more elements
#' @export
#'
#' @examples
#' s <- "alfa,bravo,charlie,delta"
#' strsplit1(s)
#'
#' s <- "echo:foxtrot:golf:hotel"
#' strsplit1(s, ':')
#'
#' s <- "thiswillnotbesplit"
#' strsplit1(s)
strsplit1 <- function(s, sep=',') {
  strsplit(s, split = sep)[[1]]
}

#' Split a character vector into a list of character vectors
#'
#' @inheritParams stringr::str_split
#'
#' @return A list of character vectors
#' @export
#'
#' @examples
#' fruits <- c(
#'   "apples and oranges and pears and bananas",
#'    "pineapples and mangos and guavas"
#'  )
#'  str_split_one(fruits, " and ")
str_split_one <- function(string, pattern = ',') {
  stopifnot(
    TRUE
    , is.character(string)
    , is.character(pattern)
    , nchar(pattern) >= 1
    )

  if (length(string) > 1 | nchar(pattern) > 1) {
    lapply(
      list(c(
        stringr::str_split(string = string, pattern = pattern,
                           n = Inf, simplify = TRUE)
      )),
      function(x) x[!is.na(x) & x != ''])
  } else if (length(string) == 1) {
    strsplit1(string, pattern)
  } else {
    character()
  }
}
