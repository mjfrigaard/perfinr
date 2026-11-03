#' Monthly contribution needed to reach a target by a deadline
#'
#' Rounds up to whole dollars and returns 0 when the target is already met.
#' From the *Emergency fund* chapter.
#'
#' @param target Target balance.
#' @param current_balance Amount already saved.
#' @param months Months until the deadline. Must be greater than 0.
#'
#' @return A numeric vector of whole dollar monthly contributions.
#'
#' @family emergency fund
#'
#' @examples
#' # $9,600 target, $1,200 saved, want to finish in 18 months
#' monthly_contribution_needed(target = 9600, current_balance = 1200, months = 18)
#'
#' @export
monthly_contribution_needed <- function(target, current_balance, months) {
  check_numeric(target)
  check_numeric(current_balance)
  check_positive(months)
  remaining <- pmax(0, target - current_balance)
  ceiling(remaining / months)
}
