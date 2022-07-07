#' Negative Value Matching
#'
#' @description Returns a logical vector indicating if there is *not* a match for its left operand.
#' @seealso base::match()
#'
#' @details This is a convenience function that negates the normal [[base::%in%()]] function.
#'
#' @param x vector or NULL: the values to be matched. See [[base::match()]] for details.
#' @param table vector or NULL: the values to be matched against. See [[base::match()]] for details.
#'
#' @return A vector of the same length as `x`.
#' @export
#'
#' @examples
#' \dontrun{
#' 1 %not in% c(1,2,3)
#' }
`%not in%` <- function(x, table) {
  !(x %in% table)
}
