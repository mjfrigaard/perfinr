#' Fixed costs as a percent of take home pay
#'
#' From the *Income* chapter.
#'
#' @param fixed_costs Monthly fixed costs (rent, insurance, loan payments).
#' @param take_home Monthly take home pay. Must be greater than 0.
#'
#' @return A numeric vector of percentages.
#'
#' @family income
#'
#' @examples
#' fixed_cost_ratio(fixed_costs = 1800, take_home = 3200)
#'
#' @export
fixed_cost_ratio <- function(fixed_costs, take_home) {
  check_numeric(fixed_costs)
  check_positive(take_home)
  (fixed_costs / take_home) * 100
}
