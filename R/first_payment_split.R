#' Interest and principal in the first loan payment
#'
#' From the *Major purchases* chapter.
#'
#' @param principal Loan amount (a single number).
#' @param annual_rate Yearly interest rate, as a decimal (a single number).
#' @param years Loan term in years (a single number).
#'
#' @return A one row data frame with columns `payment`, `interest`,
#'   `principal`, and `pct_interest` (the percent of the payment that is
#'   interest).
#'
#' @family major purchases
#'
#' @examples
#' # first payment on a $480,000 loan at 6% over 30 years
#' first_payment_split(principal = 480000, annual_rate = 0.06, years = 30)
#'
#' @export
first_payment_split <- function(principal, annual_rate, years) {
  stopifnot(
    "`principal` must be a single number" = length(principal) == 1,
    "`annual_rate` must be a single number" = length(annual_rate) == 1,
    "`years` must be a single number" = length(years) == 1
  )
  payment <- mortgage_payment(principal, annual_rate, years)
  interest <- principal * (annual_rate / 12)
  data.frame(
    payment = payment,
    interest = interest,
    principal = payment - interest,
    pct_interest = (interest / payment) * 100
  )
}
