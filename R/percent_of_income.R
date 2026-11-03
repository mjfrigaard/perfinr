#' Expense as a percent of income
#'
#' From the *Budgeting* chapter.
#'
#' @param expense Expense amount.
#' @param income Income for the same period as `expense`. Must be greater
#'   than 0.
#'
#' @return A numeric vector of percentages (`30` is 30%).
#'
#' @family budgeting
#'
#' @examples
#' percent_of_income(expense = 1500, income = 5000)
#'
#' @export
percent_of_income <- function(expense, income) {
  check_numeric(expense)
  check_positive(income)
  (expense / income) * 100
}
