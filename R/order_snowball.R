#' Order debts for the snowball method
#'
#' Smallest balance first. From the *Managing debt* chapter.
#'
#' @param debts A data frame with a numeric `balance` column.
#'
#' @return `debts`, reordered by `balance` from smallest to largest.
#'
#' @family managing debt
#'
#' @examples
#' debts <- data.frame(
#'   name = c("Card A", "Card B", "Card C"),
#'   balance = c(1000, 5000, 2000),
#'   apr = c(0.18, 0.24, 0.15)
#' )
#' order_snowball(debts)
#'
#' @export
order_snowball <- function(debts) {
  stopifnot(
    "`debts` must be a data frame" = is.data.frame(debts),
    "`debts` must have a `balance` column" = "balance" %in% names(debts)
  )
  check_numeric(debts$balance, "debts$balance")
  debts[order(debts$balance), ]
}
