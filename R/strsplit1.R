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
