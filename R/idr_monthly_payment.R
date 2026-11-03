#' Income driven repayment (IDR) monthly payment
#'
#' Discretionary income is adjusted gross income (AGI) above
#' `threshold_pct` times the poverty guideline. The yearly payment is
#' `payment_rate` of that, split into 12 months and rounded to cents. From
#' the *Managing debt* chapter.
#'
#' @param agi Adjusted gross income.
#' @param poverty_guideline Federal poverty guideline for the household size.
#'   Defaults to 15960 (one person).
#' @param threshold_pct Multiple of the poverty guideline that is protected.
#'   Defaults to 1.5 (150%).
#' @param payment_rate Share of discretionary income paid each year.
#'   Defaults to 0.10.
#'
#' @return A numeric vector of monthly payments.
#'
#' @family managing debt
#'
#' @examples
#' # IBR: $50,000 AGI, 150% threshold, 10% rate
#' idr_monthly_payment(agi = 50000)
#'
#' # IBR for loans before July 2014: 15% rate
#' idr_monthly_payment(agi = 50000, payment_rate = 0.15)
#'
#' @export
idr_monthly_payment <- function(agi,
                                poverty_guideline = 15960,
                                threshold_pct = 1.5,
                                payment_rate = 0.10) {
  check_numeric(agi)
  check_numeric(poverty_guideline)
  check_numeric(threshold_pct)
  check_numeric(payment_rate)
  discretionary <- pmax(0, agi - poverty_guideline * threshold_pct)
  round((discretionary * payment_rate) / 12, 2)
}
