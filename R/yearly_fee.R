#' Yearly fund fee
#'
#' Balance times the fund's expense ratio. From the *Index funds* chapter.
#'
#' @param balance Amount invested.
#' @param expense_ratio Yearly expense ratio, as a decimal (`0.0004` is
#'   0.04%).
#'
#' @return A numeric vector of yearly fees.
#'
#' @family index funds
#'
#' @examples
#' # $10,000 in an index fund vs. an active fund
#' yearly_fee(balance = 10000, expense_ratio = c(0.0004, 0.01))
#'
#' @export
yearly_fee <- function(balance, expense_ratio) {
  check_numeric(balance)
  check_numeric(expense_ratio)
  balance * expense_ratio
}
