#' Emergency fund balance after interest
#'
#' Grows a balance at an annual percentage yield (APY) for a number of
#' months. From the *Emergency fund* chapter.
#'
#' @param balance Starting balance.
#' @param apy Annual percentage yield, as a decimal.
#' @param months Number of months.
#'
#' @return A numeric vector of balances.
#'
#' @family emergency fund
#'
#' @examples
#' # $9,600 at 4% APY for 12 months
#' ef_growth(balance = 9600, apy = 0.04, months = 12)
#'
#' @export
ef_growth <- function(balance, apy, months) {
  check_numeric(balance)
  check_numeric(apy)
  check_numeric(months)
  balance * (1 + apy)^(months / 12)
}
