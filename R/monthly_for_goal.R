#' Monthly deposit needed to reach a savings goal
#'
#' The level monthly deposit that grows to `goal` in `months` at
#' `annual_rate`, compounded monthly. At a 0% rate this is `goal / months`.
#' From the *Financial goals* chapter.
#'
#' @param goal Target amount.
#' @param annual_rate Yearly interest rate, as a decimal.
#' @param months Number of monthly deposits. Must be greater than 0.
#'
#' @return A numeric vector of monthly deposits.
#'
#' @family financial goals
#'
#' @examples
#' # $15,000 in 5 years at 4%, compared to no interest
#' monthly_for_goal(goal = 15000, annual_rate = 0.04, months = 60)
#' monthly_for_goal(goal = 15000, annual_rate = 0, months = 60)
#'
#' @export
monthly_for_goal <- function(goal, annual_rate, months) {
  check_numeric(goal)
  check_numeric(annual_rate)
  check_positive(months)
  goal / annuity_factor(annual_rate / 12, months)
}
