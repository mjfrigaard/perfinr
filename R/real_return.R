#' Return after inflation
#'
#' The exact (Fisher) real return. From the *Investing basics* chapter.
#'
#' @param nominal Nominal yearly return, as a decimal.
#' @param inflation Yearly inflation rate, as a decimal.
#'
#' @return A numeric vector of real returns, as decimals.
#'
#' @family investing basics
#'
#' @examples
#' # 7% nominal return against 3% inflation
#' real_return(nominal = 0.07, inflation = 0.03)
#'
#' @export
real_return <- function(nominal, inflation) {
  check_numeric(nominal)
  check_numeric(inflation)
  (1 + nominal) / (1 + inflation) - 1
}
