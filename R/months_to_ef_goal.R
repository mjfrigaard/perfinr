#' Months to reach an emergency fund target
#'
#' Rounds up to whole months and returns 0 when the target is already met.
#' From the *Emergency fund* chapter.
#'
#' @param target Target balance.
#' @param current_balance Amount already saved.
#' @param monthly_contribution Amount added each month. Must be greater
#'   than 0.
#'
#' @return A numeric vector of whole months.
#'
#' @family emergency fund
#'
#' @examples
#' # $9,600 target, $1,200 saved, $400/month contribution
#' months_to_ef_goal(target = 9600, current_balance = 1200, monthly_contribution = 400)
#'
#' @export
months_to_ef_goal <- function(target, current_balance, monthly_contribution) {
  check_numeric(target)
  check_numeric(current_balance)
  check_positive(monthly_contribution)
  remaining <- pmax(0, target - current_balance)
  ceiling(remaining / monthly_contribution)
}
