#' Part of a raise kept after federal income tax
#'
#' The raise minus the extra tax it causes, using [income_tax()]. From the
#' *Taxes* chapter.
#'
#' @param old_income Yearly income before the raise (a single number).
#' @param raise Yearly raise amount (a single number).
#'
#' @return A single number: the raise after federal income tax.
#'
#' @family taxes
#'
#' @examples
#' # $2,000 raise on a $66,000 salary
#' raise_kept(old_income = 66000, raise = 2000)
#'
#' @export
raise_kept <- function(old_income, raise) {
  check_numeric(old_income)
  check_numeric(raise)
  raise - (income_tax(old_income + raise) - income_tax(old_income))
}
