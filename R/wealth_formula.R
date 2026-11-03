#' Wealth from saving part of an income every year
#'
#' The future value of saving `median_income * savings_rate` at the end of
#' each year (contributions plus growth). From the *Income* chapter.
#'
#' @param median_income Yearly income.
#' @param savings_rate Share of income saved, as a decimal.
#' @param annual_return Yearly return, as a decimal.
#' @param years Number of years.
#'
#' @return A numeric vector of ending balances.
#'
#' @family income
#'
#' @examples
#' # $45,000 income, 20% saved, 7% return, 30 years
#' wealth_formula(45000, savings_rate = 0.20, annual_return = 0.07, years = 30)
#'
#' @export
wealth_formula <- function(median_income, savings_rate, annual_return, years) {
  check_numeric(median_income)
  check_numeric(savings_rate)
  check_numeric(annual_return)
  check_numeric(years)
  annual_savings <- median_income * savings_rate
  annual_savings * annuity_factor(annual_return, years)
}
