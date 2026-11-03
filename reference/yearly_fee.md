# Yearly fund fee

Balance times the fund's expense ratio. From the *Index funds* chapter.

## Usage

``` r
yearly_fee(balance, expense_ratio)
```

## Arguments

- balance:

  Amount invested.

- expense_ratio:

  Yearly expense ratio, as a decimal (`0.0004` is 0.04%).

## Value

A numeric vector of yearly fees.

## See also

Other index funds:
[`future_value_after_fees()`](https://mjfrigaard.github.io/perfinr/reference/future_value_after_fees.md)

## Examples

``` r
# $10,000 in an index fund vs. an active fund
yearly_fee(balance = 10000, expense_ratio = c(0.0004, 0.01))
#> [1]   4 100
```
