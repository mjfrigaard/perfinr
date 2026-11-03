# Amount to move to get back to a target allocation

The difference between the target dollar amount for an asset class and
the amount currently held. From the *Asset allocation* chapter.

## Usage

``` r
rebalance_amount(target_pct, total, current_amount)
```

## Arguments

- target_pct:

  Target share of the portfolio, as a decimal.

- total:

  Total portfolio value.

- current_amount:

  Current value held in the asset class.

## Value

A numeric vector. Positive values are amounts to buy; negative values
are amounts to sell.

## See also

Other asset allocation:
[`portfolio_return()`](https://mjfrigaard.github.io/perfinr/reference/portfolio_return.md)

## Examples

``` r
# $5,600 in stocks and $2,000 in bonds after a 30% stock drop
rebalance_amount(target_pct = 0.80, total = 5600 + 2000, current_amount = 5600)
#> [1] 480
```
