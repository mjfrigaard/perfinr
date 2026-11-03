#' Federal income tax for a single filer
#'
#' Applies the 2026 federal brackets for single filers to income after the
#' standard deduction. From the *Taxes* chapter.
#'
#' @param income Gross yearly income (a single number).
#' @param deduction Deduction subtracted before the brackets apply. Defaults
#'   to the 2026 standard deduction, 16100.
#'
#' @return A single number: the yearly federal income tax.
#'
#' @family taxes
#'
#' @examples
#' # 2026 federal income tax on a $45,000 salary
#' tax <- income_tax(income = 45000)
#' tax
#'
#' # effective rate
#' tax / 45000
#'
#' @export
income_tax <- function(income, deduction = 16100) {
  check_numeric(income)
  check_numeric(deduction)
  stopifnot(
    "`income` must be a single number" = length(income) == 1,
    "`deduction` must be a single number" = length(deduction) == 1
  )
  taxable <- max(income - deduction, 0)
  lower <- c(0, 12400, 50400, 105700, 201775, 256225, 640600)
  upper <- c(lower[-1], Inf)
  rate <- c(0.10, 0.12, 0.22, 0.24, 0.32, 0.35, 0.37)
  sum(rate * pmax(pmin(taxable, upper) - lower, 0))
}
