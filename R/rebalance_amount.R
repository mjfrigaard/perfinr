#' Amount to move to get back to a target allocation
#'
#' The difference between the target dollar amount for an asset class and the
#' amount currently held. From the *Asset allocation* chapter.
#'
#' @param target_pct Target share of the portfolio, as a decimal.
#' @param total Total portfolio value.
#' @param current_amount Current value held in the asset class.
#'
#' @return A numeric vector. Positive values are amounts to buy; negative
#'   values are amounts to sell.
#'
#' @family asset allocation
#'
#' @examples
#' # $5,600 in stocks and $2,000 in bonds after a 30% stock drop
#' rebalance_amount(target_pct = 0.80, total = 5600 + 2000, current_amount = 5600)
#'
#' @export
rebalance_amount <- function(target_pct, total, current_amount) {
  check_numeric(target_pct)
  check_numeric(total)
  check_numeric(current_amount)
  target_pct * total - current_amount
}
