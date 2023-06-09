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
#' str_split_one(s)
#'
#' s <- "echo:foxtrot:golf:hotel"
#' str_split_one(s, ':')
#'
#' s <- "thiswillnotbesplit"
#' str_split_one(s)
str_split_one <- function(s, sep=',') {
  strsplit(s, split = sep)[[1]]
}

#' Split a character vector into a list of character vectors
#'
#' @param string Input vector, a character vector, or something coercible to one.
#' @param pattern The pattern to look for.
#'
#' @return A list of character vectors
#' @export
#'
#' @examples
#' fruits <- c(
#'   "apples and oranges and pears and bananas",
#'    "pineapples and mangos and guavas"
#'  )
#'  str_split_multi(fruits, " and ")
str_split_multi <- function(string, pattern = ',') {
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
    str_split_one(string, pattern)
  } else {
    character()
  }
}
