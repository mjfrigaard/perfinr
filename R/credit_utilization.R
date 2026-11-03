#' Credit utilization
#'
#' Card balance as a percent of the credit limit. From the *Managing debt*
#' chapter.
#'
#' @param balance Card balance.
#' @param credit_limit Credit limit. Must be greater than 0.
#'
#' @return A numeric vector of percentages.
#'
#' @family managing debt
#'
#' @examples
#' # $900 balance on a $3,000 limit
#' credit_utilization(balance = 900, credit_limit = 3000)
#'
#' @export
credit_utilization <- function(balance, credit_limit) {
  check_numeric(balance)
  check_positive(credit_limit)
  (balance / credit_limit) * 100
}
