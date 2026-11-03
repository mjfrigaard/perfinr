# Blended return of a stock and bond portfolio

Weights the stock and bond returns by the share of the portfolio held in
stocks. From the *Asset allocation* chapter.

## Usage

``` r
portfolio_return(stock_pct, stock_return, bond_return)
```

## Arguments

- stock_pct:

  Share of the portfolio in stocks, as a decimal (`0.8` is 80%). The
  rest is in bonds.

- stock_return:

  Stock return for the period, as a decimal.

- bond_return:

  Bond return for the period, as a decimal.

## Value

A numeric vector of portfolio returns, as decimals.

## See also

Other asset allocation:
[`rebalance_amount()`](https://mjfrigaard.github.io/perfinr/reference/rebalance_amount.md)

## Examples

``` r
# 100/0, 80/20, and 60/40 in an average year and a bad year
splits <- c(1, 0.8, 0.6)
portfolio_return(splits, stock_return = 0.10, bond_return = 0.04)
#> [1] 0.100 0.088 0.076
portfolio_return(splits, stock_return = -0.40, bond_return = 0)
#> [1] -0.40 -0.32 -0.24
```
