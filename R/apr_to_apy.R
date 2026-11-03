#' Convert an APR to an APY
#'
#' The effective yearly rate of an annual percentage rate (APR) compounded
#' `periods_per_year` times. From the *Managing debt* chapter.
#'
#' @param apr Annual percentage rate, as a decimal.
#' @param periods_per_year Compounding periods per year. Defaults to 365
#'   (daily, as most credit cards compound). Must be greater than 0.
#'
#' @return A numeric vector of APYs, as decimals.
#'
#' @family managing debt
#'
#' @examples
#' # 24% APR compounded daily
#' apr_to_apy(apr = 0.24)
#'
#' @export
apr_to_apy <- function(apr, periods_per_year = 365) {
  check_numeric(apr)
  check_positive(periods_per_year)
  (1 + apr / periods_per_year)^periods_per_year - 1
}
