#' Detect presence or absence of *any* pattern in string.
#'
#' @description This function is very similar to [[stringr::str_detect()]] except it
#' can be vectorized over both string and pattern at the same time.
#'
#' @details The functions [[stringr::str_detect()]] and [[stringi::stri_detect]] are
#' excellent functions for identifying
#' matches with patterns. However, there are edge cases where it would be great to match
#' a set of patterns against a table of strings. In this case, detect doesn't quite work.
#'
#' This function provides the ability to determine if any of the patterns (summarized)
#' matches any of the strings. It returns a vector (of length of the string vector) of
#' logicals indicating if any of the patterns are matched for each element of the string
#' vector.
#'
#' @param string Input vector.
#' @param pattern Pattern to look for (see [[stringr::str_detect()]])
#' @param negate If TRUE, return non-matching elements.
#'
#' @return A logical vector.
#' @export
#'
#' @examples
#' \dontrun{
#' fruit <- c("apple","banana","pear","pineapple")
#' pattern <- c("a","^a","a$","b","[aeiou]")
#'
#' stringr::str_detect(fruit, pattern[1])
#'
#' str_detect_any(fruit, pattern[1])
#'
#' str_detect_any(fruit, pattern[2:4])
#' }
str_detect_any <- function(string, pattern, negate = FALSE) {
  stringr::str_detect(string, paste(pattern, collapse = "|"), negate)
}
