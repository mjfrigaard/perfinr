#' Future value of a one time investment
#'
#' Compounds `present_value` once per year. From the *Investing basics*
#' chapter.
#'
#' @param present_value Amount invested today.
#' @param rate Yearly return, as a decimal.
#' @param years Number of years.
#'
#' @return A numeric vector of future values.
#'
#' @family investing basics
#'
#' @examples
#' # $10,000 at 7% for 10 years
#' future_value(present_value = 10000, rate = 0.07, years = 10)
#'
#' # same $10,000 across several horizons
#' future_value(present_value = 10000, rate = 0.07, years = c(5, 10, 20, 30))
#'
#' @export
future_value <- function(present_value, rate, years) {
  check_numeric(present_value)
  check_numeric(rate)
  check_numeric(years)
  present_value * (1 + rate)^years
}
