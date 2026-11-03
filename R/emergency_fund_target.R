#' Emergency fund target
#'
#' Monthly essential expenses times the number of months to cover. From the
#' *Emergency fund* chapter.
#'
#' @param monthly_expenses Essential expenses per month.
#' @param months Months of expenses to cover. Defaults to 3.
#'
#' @return A numeric vector of target balances.
#'
#' @family emergency fund
#'
#' @examples
#' # $2,400/month in essential expenses, 3-month and 6-month targets
#' emergency_fund_target(monthly_expenses = 2400, months = 3)
#' emergency_fund_target(monthly_expenses = 2400, months = 6)
#'
#' @export
emergency_fund_target <- function(monthly_expenses, months = 3) {
  check_numeric(monthly_expenses)
  check_numeric(months)
  monthly_expenses * months
}
