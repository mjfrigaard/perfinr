#' What a subscription would grow to if invested instead
#'
#' Invests the yearly cost of a subscription at the end of each year. From
#' the *Tracking spending* chapter.
#'
#' @param monthly_cost Monthly subscription cost.
#' @param years Number of years.
#' @param rate Yearly return, as a decimal. Defaults to 0.07.
#'
#' @return A numeric vector of ending balances.
#'
#' @family tracking spending
#'
#' @examples
#' # a $15/month subscription over 30 years
#' subscription_opportunity_cost(monthly_cost = 15, years = 30)
#'
#' @export
subscription_opportunity_cost <- function(monthly_cost, years, rate = 0.07) {
  check_numeric(monthly_cost)
  check_numeric(years)
  check_numeric(rate)
  annual_cost <- monthly_cost * 12
  annual_cost * annuity_factor(rate, years)
}
