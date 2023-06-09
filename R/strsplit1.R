#' Split a string into a list of substrings separated by the given separator.
#'
#' @param s The string (i.e. a character vector with one element) to be splited.
#' @param sep The separating character to split on. Default: ','
#'
#' @return A character vector
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
