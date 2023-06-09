#' Split a string into a list of substrings separated by the given separator.
#'
#' @param s A character vector with one element to be split.
#' @param sep The separating character to split on. Default: ','
#'
#' @return A character vector of one or more elements
#' @export
#'
#' @examples
#' x <- "alfa,bravo,charlie,delta"
#' strsplit1(x)
#'
#' x <- "echo;foxtrot;golf;hotel"
#' strsplit1(x, ';')
strsplit1 <- function(s, sep=',') {
  strsplit(s, split = sep)[[1]]
}
