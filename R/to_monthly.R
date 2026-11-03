#' Convert a daily, weekly, or yearly amount to a monthly amount
#'
#' Uses 30.44 days and 4.33 weeks per month. From the *Budgeting* chapter.
#'
#' @param amount Amount per `period`.
#' @param period One of `"daily"`, `"weekly"`, or `"annual"`.
#'
#' @return A numeric vector of monthly amounts.
#'
#' @family budgeting
#'
#' @examples
#' to_monthly(5, period = "daily")
#' to_monthly(60000, period = "annual")
#'
#' @export
to_monthly <- function(amount, period = c("daily", "weekly", "annual")) {
  check_numeric(amount)
  period <- match.arg(period)
  factors <- c(daily = 30.44, weekly = 4.33, annual = 1 / 12)
  amount * factors[[period]]
}
