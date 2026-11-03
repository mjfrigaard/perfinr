#' High yield savings account balance
#'
#' Grows a principal at an annual percentage yield (APY). From the *High
#' yield accounts* chapter.
#'
#' @param principal Starting balance.
#' @param annual_apy Annual percentage yield, as a decimal.
#' @param years Number of years. Defaults to 1.
#'
#' @return A numeric vector of balances.
#'
#' @family high yield accounts
#'
#' @examples
#' # $9,600 at 4% APY after 1 year, then after 5 years
#' hysa_balance(principal = 9600, annual_apy = 0.04, years = 1)
#' hysa_balance(principal = 9600, annual_apy = 0.04, years = 5)
#'
#' @export
hysa_balance <- function(principal, annual_apy, years = 1) {
  check_numeric(principal)
  check_numeric(annual_apy)
  check_numeric(years)
  principal * (1 + annual_apy)^years
}
