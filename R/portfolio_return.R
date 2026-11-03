#' Blended return of a stock and bond portfolio
#'
#' Weights the stock and bond returns by the share of the portfolio held in
#' stocks. From the *Asset allocation* chapter.
#'
#' @param stock_pct Share of the portfolio in stocks, as a decimal (`0.8` is
#'   80%). The rest is in bonds.
#' @param stock_return Stock return for the period, as a decimal.
#' @param bond_return Bond return for the period, as a decimal.
#'
#' @return A numeric vector of portfolio returns, as decimals.
#'
#' @family asset allocation
#'
#' @examples
#' # 100/0, 80/20, and 60/40 in an average year and a bad year
#' splits <- c(1, 0.8, 0.6)
#' portfolio_return(splits, stock_return = 0.10, bond_return = 0.04)
#' portfolio_return(splits, stock_return = -0.40, bond_return = 0)
#'
#' @export
portfolio_return <- function(stock_pct, stock_return, bond_return) {
  check_numeric(stock_pct)
  check_numeric(stock_return)
  check_numeric(bond_return)
  stock_pct * stock_return + (1 - stock_pct) * bond_return
}
