#' Monthly savings at a given savings rate
#'
#' The "pay yourself first" amount: gross monthly income times the savings
#' rate. From the *Automating savings* chapter.
#'
#' @param gross_monthly_income Gross (before tax) monthly income.
#' @param savings_rate Share of income to save, as a decimal.
#'
#' @return A numeric vector of monthly savings amounts.
#'
#' @family automating savings
#'
#' @examples
#' # $4,000 gross monthly income, 20% savings rate
#' monthly_savings(gross_monthly_income = 4000, savings_rate = 0.20)
#'
#' @export
monthly_savings <- function(gross_monthly_income, savings_rate) {
  check_numeric(gross_monthly_income)
  check_numeric(savings_rate)
  gross_monthly_income * savings_rate
}
