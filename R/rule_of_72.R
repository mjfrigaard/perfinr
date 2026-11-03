#' Years for money to double (rule of 72)
#'
#' A quick estimate: 72 divided by the yearly return in percent. From the
#' *Investing basics* chapter.
#'
#' @param annual_return_pct Yearly return as a percent (`7` is 7%), not a
#'   decimal. Must be greater than 0.
#'
#' @return A numeric vector of years.
#'
#' @family investing basics
#'
#' @examples
#' rule_of_72(annual_return_pct = 7)
#'
#' @export
rule_of_72 <- function(annual_return_pct) {
  check_positive(annual_return_pct)
  72 / annual_return_pct
}
