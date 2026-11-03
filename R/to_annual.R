#' Convert a daily, weekly, or monthly amount to a yearly amount
#'
#' Uses 365 days, 52 weeks, and 12 months per year. From the *Budgeting*
#' chapter.
#'
#' @param amount Amount per `period`.
#' @param period One of `"daily"`, `"weekly"`, or `"monthly"`.
#'
#' @return A numeric vector of yearly amounts.
#'
#' @family budgeting
#'
#' @examples
#' to_annual(5, period = "daily")
#' to_annual(1500, period = "monthly")
#'
#' @export
to_annual <- function(amount, period = c("daily", "weekly", "monthly")) {
  check_numeric(amount)
  period <- match.arg(period)
  factors <- c(daily = 365, weekly = 52, monthly = 12)
  amount * factors[[period]]
}
