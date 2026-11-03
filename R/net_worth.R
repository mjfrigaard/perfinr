#' Net worth
#'
#' Total assets minus total debts. From the *Estate planning* chapter.
#'
#' @param assets Numeric vector of asset values.
#' @param debts Numeric vector of debt balances.
#'
#' @return A single number.
#'
#' @family estate planning
#'
#' @examples
#' assets <- c(k401 = 12000, roth_ira = 6000, savings = 8000, car = 9000)
#' debts <- c(car_loan = 6000, credit_card = 1000)
#' net_worth(assets, debts)
#'
#' @export
net_worth <- function(assets, debts) {
  check_numeric(assets)
  check_numeric(debts)
  sum(assets) - sum(debts)
}
