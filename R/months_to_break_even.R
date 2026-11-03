#' Months until an upfront cost pays for itself
#'
#' From the *Budgeting* chapter.
#'
#' @param upfront_cost One time cost.
#' @param monthly_savings Amount saved each month because of the purchase.
#'   Must be greater than 0.
#'
#' @return A numeric vector of months (not rounded).
#'
#' @family budgeting
#'
#' @examples
#' # $600 upfront to save $50 a month
#' months_to_break_even(upfront_cost = 600, monthly_savings = 50)
#'
#' @export
months_to_break_even <- function(upfront_cost, monthly_savings) {
  check_numeric(upfront_cost)
  check_positive(monthly_savings)
  upfront_cost / monthly_savings
}
