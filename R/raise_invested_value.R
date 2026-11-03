#' Future value of investing part of a raise
#'
#' Invests `monthly_raise * invest_share` every month, compounded monthly.
#' From the *Income* chapter.
#'
#' @param monthly_raise Monthly increase in take home pay.
#' @param invest_share Share of the raise invested, as a decimal.
#' @param rate Yearly return, as a decimal.
#' @param years Number of years.
#'
#' @return A numeric vector of ending balances.
#'
#' @family income
#'
#' @examples
#' # invest half of a $200/month raise at 7% for 30 years
#' raise_invested_value(200, invest_share = 0.5, rate = 0.07, years = 30)
#'
#' @export
raise_invested_value <- function(monthly_raise, invest_share, rate, years) {
  check_numeric(monthly_raise)
  check_numeric(invest_share)
  check_numeric(rate)
  check_numeric(years)
  contribution <- monthly_raise * invest_share
  contribution * annuity_factor(rate / 12, years * 12)
}
