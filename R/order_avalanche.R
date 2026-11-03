#' Order debts for the avalanche method
#'
#' Highest APR first. From the *Managing debt* chapter.
#'
#' @param debts A data frame with a numeric `apr` column.
#'
#' @return `debts`, reordered by `apr` from highest to lowest.
#'
#' @family managing debt
#'
#' @examples
#' debts <- data.frame(
#'   name = c("Card A", "Card B", "Card C"),
#'   balance = c(1000, 5000, 2000),
#'   apr = c(0.18, 0.24, 0.15)
#' )
#' order_avalanche(debts)
#'
#' @export
order_avalanche <- function(debts) {
  stopifnot(
    "`debts` must be a data frame" = is.data.frame(debts),
    "`debts` must have an `apr` column" = "apr" %in% names(debts)
  )
  check_numeric(debts$apr, "debts$apr")
  debts[order(-debts$apr), ]
}
