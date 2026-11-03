#' Years for a higher deductible to pay off
#'
#' The extra deductible risk divided by the yearly premium savings. From the
#' *Insurance* chapter.
#'
#' @param high_deductible The higher deductible.
#' @param low_deductible The lower deductible.
#' @param yearly_savings Yearly premium savings from the higher deductible.
#'   Must be greater than 0.
#'
#' @return A numeric vector of years (not rounded).
#'
#' @family insurance
#'
#' @examples
#' # $1,000 vs. $500 deductible, saving $150 a year
#' break_even_years(high_deductible = 1000, low_deductible = 500, yearly_savings = 150)
#'
#' @export
break_even_years <- function(high_deductible, low_deductible, yearly_savings) {
  check_numeric(high_deductible)
  check_numeric(low_deductible)
  check_positive(yearly_savings)
  (high_deductible - low_deductible) / yearly_savings
}
