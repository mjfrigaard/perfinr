#' What money spent today could grow to
#'
#' The future value of a one time amount if it were invested instead of
#' spent. From the *Budgeting* chapter.
#'
#' @param amount Amount spent today.
#' @param rate Yearly return, as a decimal.
#' @param years Number of years.
#'
#' @return A numeric vector of future values.
#'
#' @family budgeting
#'
#' @examples
#' # $1,000 invested at 7% for 30 years
#' opportunity_cost(amount = 1000, rate = 0.07, years = 30)
#'
#' @export
opportunity_cost <- function(amount, rate, years) {
  check_numeric(amount)
  check_numeric(rate)
  check_numeric(years)
  amount * (1 + rate)^years
}
