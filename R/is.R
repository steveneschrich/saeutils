#' Test if input elements are **not** missing
#'
#' @description Performs the inverse of the [[base::is.na()]] function (syntactic sugar).
#'
#' @details This is not a very exciting function, it merely packages the logic of
#' ```
#' !is.na(x)
#' ```
#' in a slightly more readable format.
#'
#' @param x A value or vector of values (see [[base::is.na()]]).
#'
#' @return Logical indicating if the values are **not** NA (see [[base::is.na()]]).
#' @export
#'
#' @examples
#' is.not_na(c(0,1,NA))
#'
is.not_na <- function(x) {
  !is.na(x)
}
