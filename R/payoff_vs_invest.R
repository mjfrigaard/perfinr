#' Pay off a loan or invest the difference
#'
#' Compares a loan's interest rate to an expected investment return. From
#' the *Managing debt* chapter.
#'
#' @param loan_rate Loan interest rate, as a decimal (a single number).
#' @param expected_return Expected yearly return, as a decimal (a single
#'   number).
#'
#' @return A single string: `"Pay off the debt"`, `"Invest the difference"`,
#'   or `"Roughly a wash; do both"`.
#'
#' @family managing debt
#'
#' @examples
#' # 5% student loan vs. expected 7% return
#' payoff_vs_invest(loan_rate = 0.05, expected_return = 0.07)
#'
#' @export
payoff_vs_invest <- function(loan_rate, expected_return) {
  check_numeric(loan_rate)
  check_numeric(expected_return)
  stopifnot(
    "`loan_rate` must be a single number" = length(loan_rate) == 1,
    "`expected_return` must be a single number" = length(expected_return) == 1
  )
  if (loan_rate > expected_return) {
    "Pay off the debt"
  } else if (loan_rate < expected_return) {
    "Invest the difference"
  } else {
    "Roughly a wash; do both"
  }
}
