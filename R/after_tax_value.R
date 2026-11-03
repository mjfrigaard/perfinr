#' After tax value of a retirement contribution
#'
#' Taxes the contribution once at `tax_rate` (today for a Roth, in
#' retirement for a traditional account) and grows it at `rate`. From the
#' *Retirement accounts* chapter.
#'
#' @param contribution Amount contributed.
#' @param tax_rate Tax rate applied, as a decimal.
#' @param rate Yearly return, as a decimal.
#' @param years Number of years.
#'
#' @return A numeric vector of after tax values.
#'
#' @family retirement accounts
#'
#' @examples
#' # Roth: taxed at today's 12% rate
#' after_tax_value(contribution = 1000, tax_rate = 0.12, rate = 0.07, years = 40)
#'
#' # Traditional: taxed at a 22% rate in retirement
#' after_tax_value(contribution = 1000, tax_rate = 0.22, rate = 0.07, years = 40)
#'
#' @export
after_tax_value <- function(contribution, tax_rate, rate, years) {
  check_numeric(contribution)
  check_numeric(tax_rate)
  check_numeric(rate)
  check_numeric(years)
  contribution * (1 - tax_rate) * (1 + rate)^years
}
