#' Months to fund a goal with a fixed monthly amount
#'
#' Rounds up to whole months and ignores interest. From the *Financial goals*
#' chapter.
#'
#' @param goal Target amount.
#' @param monthly Amount set aside each month. Must be greater than 0.
#'
#' @return A numeric vector of whole months.
#'
#' @family financial goals
#'
#' @examples
#' # one at a time: trip first, then car
#' months_to_fund(3000, 600)
#' months_to_fund(3000 + 9000, 600)
#'
#' @export
months_to_fund <- function(goal, monthly) {
  check_numeric(goal)
  check_positive(monthly)
  ceiling(goal / monthly)
}
