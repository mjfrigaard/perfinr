#' Months to pay off a balance with a fixed payment
#'
#' Interest compounds monthly at `apr / 12`. The result is not rounded; the
#' last payment is a partial one. Errors when the payment does not cover the
#' first month's interest, because the balance would never be paid off.
#' From the *Managing debt* chapter.
#'
#' @param balance Current balance. Must be greater than 0.
#' @param monthly_payment Fixed monthly payment. Must be greater than 0.
#' @param apr Annual percentage rate, as a decimal.
#'
#' @return A numeric vector of months.
#'
#' @family managing debt
#'
#' @examples
#' # $5,000 balance, $100/month, 22% APR
#' months_to_payoff(balance = 5000, monthly_payment = 100, apr = 0.22)
#'
#' @export
months_to_payoff <- function(balance, monthly_payment, apr) {
  check_positive(balance)
  check_positive(monthly_payment)
  check_numeric(apr)
  if (any(monthly_payment <= balance * apr / 12)) {
    stop(
      "`monthly_payment` must be larger than the monthly interest ",
      "(`balance * apr / 12`).",
      call. = FALSE
    )
  }
  n <- max(length(balance), length(monthly_payment), length(apr))
  r <- rep_len(apr / 12, n)
  ratio <- rep_len(balance / monthly_payment, n)
  out <- -log(1 - r * ratio) / log(1 + r)
  out[r == 0] <- ratio[r == 0]
  out
}
