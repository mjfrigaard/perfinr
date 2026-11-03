#' Total interest paid over a loan
#'
#' All payments minus the amount borrowed. From the *Managing debt* chapter.
#'
#' @param monthly_payment Monthly payment.
#' @param n_months Number of payments.
#' @param principal Amount borrowed.
#'
#' @return A numeric vector of total interest.
#'
#' @family managing debt
#'
#' @examples
#' # 6-year car loan vs. 4-year, $20,000 principal at 7%
#' total_interest(monthly_payment = 340.98, n_months = 72, principal = 20000)
#' total_interest(monthly_payment = 478.92, n_months = 48, principal = 20000)
#'
#' @export
total_interest <- function(monthly_payment, n_months, principal) {
  check_numeric(monthly_payment)
  check_numeric(n_months)
  check_numeric(principal)
  (monthly_payment * n_months) - principal
}
