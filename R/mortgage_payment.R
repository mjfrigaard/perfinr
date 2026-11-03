#' Monthly payment on a fixed rate loan
#'
#' The standard amortization formula with monthly compounding. At a 0% rate
#' this is `principal / (years * 12)`. From the *Major purchases* chapter.
#'
#' @param principal Loan amount.
#' @param annual_rate Yearly interest rate, as a decimal.
#' @param years Loan term in years. Must be greater than 0.
#'
#' @return A numeric vector of monthly payments.
#'
#' @family major purchases
#'
#' @examples
#' # $480,000 loan at 6% over 30 years
#' mortgage_payment(principal = 480000, annual_rate = 0.06, years = 30)
#'
#' @export
mortgage_payment <- function(principal, annual_rate, years) {
  check_numeric(principal)
  check_numeric(annual_rate)
  check_positive(years)
  r <- annual_rate / 12
  n <- years * 12
  principal * (1 + r)^n / annuity_factor(r, n)
}
