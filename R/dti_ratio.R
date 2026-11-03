#' Debt to income (DTI) ratio
#'
#' Monthly debt payments as a percent of gross monthly income. From the
#' *Managing debt* chapter.
#'
#' @param monthly_debt_payments Total monthly debt payments.
#' @param gross_monthly_income Gross (before tax) monthly income. Must be
#'   greater than 0.
#'
#' @return A numeric vector of percentages.
#'
#' @family managing debt
#'
#' @examples
#' # $1,061 in debt payments on $3,750 gross income
#' dti_ratio(monthly_debt_payments = 1061, gross_monthly_income = 3750)
#'
#' @export
dti_ratio <- function(monthly_debt_payments, gross_monthly_income) {
  check_numeric(monthly_debt_payments)
  check_positive(gross_monthly_income)
  (monthly_debt_payments / gross_monthly_income) * 100
}
