#' Monthly payment on a standard student loan plan
#'
#' [mortgage_payment()] with federal student loan defaults: 6.5% over 10
#' years. From the *Managing debt* chapter.
#'
#' @param principal Loan amount.
#' @param annual_rate Yearly interest rate, as a decimal. Defaults to 0.065.
#' @param years Repayment term in years. Defaults to 10.
#'
#' @return A numeric vector of monthly payments.
#'
#' @family managing debt
#'
#' @examples
#' # standard 10-year monthly payment on $45,000
#' monthly_standard_payment(principal = 45000)
#'
#' @export
monthly_standard_payment <- function(principal, annual_rate = 0.065, years = 10) {
  mortgage_payment(principal, annual_rate, years)
}
