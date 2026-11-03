#' Student loan total relative to expected salary
#'
#' A ratio above 1 means you owe more than a year of starting pay. From the
#' *Managing debt* chapter.
#'
#' @param loan_total Total student loan balance.
#' @param expected_salary Expected yearly starting salary. Must be greater
#'   than 0.
#'
#' @return A numeric vector of ratios.
#'
#' @family managing debt
#'
#' @examples
#' # $45,000 in loans, $42,000 expected starting salary
#' loan_income_ratio(loan_total = 45000, expected_salary = 42000)
#'
#' @export
loan_income_ratio <- function(loan_total, expected_salary) {
  check_numeric(loan_total)
  check_positive(expected_salary)
  loan_total / expected_salary
}
