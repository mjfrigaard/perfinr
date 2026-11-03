#' Savings rate
#'
#' Income left after spending, as a percent of income. From the *Savings
#' strategies* chapter.
#'
#' @param income Income for the period. Must be greater than 0.
#' @param spending Spending for the same period.
#'
#' @return A numeric vector of percentages.
#'
#' @family savings strategies
#'
#' @examples
#' # $3,200 take home, $2,720 spent
#' savings_rate(income = 3200, spending = 2720)
#'
#' @export
savings_rate <- function(income, spending) {
  check_positive(income)
  check_numeric(spending)
  ((income - spending) / income) * 100
}
