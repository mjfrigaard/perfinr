#' Future value of a series of equal contributions
#'
#' Contributions are made at the end of each period. `rate` is the rate per
#' period, so use `0.07 / 12` for monthly contributions at 7% a year. At a 0%
#' rate this is `contribution * periods`. From the *Investing basics*
#' chapter.
#'
#' @param contribution Amount contributed each period.
#' @param rate Return per period, as a decimal.
#' @param periods Number of periods.
#'
#' @return A numeric vector of ending balances.
#'
#' @family investing basics
#'
#' @examples
#' # $500/month for 30 years at 7% a year
#' future_value_series(contribution = 500, rate = 0.07 / 12, periods = 30 * 12)
#'
#' @export
future_value_series <- function(contribution, rate, periods) {
  check_numeric(contribution)
  check_numeric(rate)
  check_numeric(periods)
  contribution * annuity_factor(rate, periods)
}
