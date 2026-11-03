#' Future value of monthly contributions after fund fees
#'
#' Subtracts the expense ratio from the yearly return, then compounds
#' monthly contributions. From the *Index funds* chapter.
#'
#' @param contribution Monthly contribution.
#' @param annual_return Yearly return before fees, as a decimal.
#' @param expense_ratio Yearly expense ratio, as a decimal.
#' @param years Number of years.
#'
#' @return A numeric vector of ending balances.
#'
#' @family index funds
#'
#' @examples
#' # $300/month for 40 years at 7%, index fund vs. active fund
#' index_fund <- future_value_after_fees(300, 0.07, 0.0004, 40)
#' active_fund <- future_value_after_fees(300, 0.07, 0.01, 40)
#' index_fund - active_fund
#'
#' @export
future_value_after_fees <- function(contribution, annual_return, expense_ratio, years) {
  check_numeric(contribution)
  check_numeric(annual_return)
  check_numeric(expense_ratio)
  check_numeric(years)
  rate <- (annual_return - expense_ratio) / 12
  contribution * annuity_factor(rate, years * 12)
}
