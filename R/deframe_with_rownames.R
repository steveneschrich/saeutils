#' Convert a one column data frame with rownames to a list
#'
#' @details The [tibble::deframe()] function is awesome, but since rownames are always
#' special, it doesn't quite work as I'd like. This function will transform a single
#' column data frame (with rownames) into a named list. It appears that [base::drop()]
#' does not honor row names so this seems the best option.
#'
#' @note The data frame column name is lost.
#'
#' @param .x A data frame
#'
#' @return A list with rownames as the list names, and the values as the data frame column.
#' @export
#'
#' @importFrom rlang .data
#' @examples
#' \dontrun{
#' # Iris has numbers for rownames, so this will have number=value
#' deframe_with_rownames(data.frame(iris[,1]))
#' }
deframe_with_rownames<-function(.x) {
  stopifnot(ncol(.x)==1)
  .x |>
    tibble::rownames_to_column(var = "rn") |>
    dplyr::select(.data$rn, dplyr::everything()) |>
    tibble::deframe()
}

