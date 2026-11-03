#' Total yearly cost of a health plan
#'
#' Premiums for the year plus medical costs (capped at the out of pocket
#' maximum), minus any employer HSA contribution. From the *Insurance*
#' chapter.
#'
#' @param monthly_premium Monthly premium.
#' @param medical_cost Medical costs for the year. Use `Inf` for a worst case
#'   year.
#' @param oop_max Out of pocket maximum.
#' @param employer_hsa Employer HSA contribution. Defaults to 0.
#'
#' @return A numeric vector of yearly costs.
#'
#' @family insurance
#'
#' @examples
#' # Plan A vs. Plan B in a healthy year ($300 of care) and the worst year
#' plan_cost(100, c(300, Inf), oop_max = 3000)
#' plan_cost(40, c(300, Inf), oop_max = 5000, employer_hsa = 500)
#'
#' @export
plan_cost <- function(monthly_premium, medical_cost, oop_max, employer_hsa = 0) {
  check_numeric(monthly_premium)
  check_numeric(medical_cost)
  check_numeric(oop_max)
  check_numeric(employer_hsa)
  monthly_premium * 12 + pmin(medical_cost, oop_max) - employer_hsa
}
