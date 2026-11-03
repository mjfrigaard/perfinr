# Future value of a series of equal contributions

Contributions are made at the end of each period. `rate` is the rate per
period, so use `0.07 / 12` for monthly contributions at 7% a year. At a
0% rate this is `contribution * periods`. From the *Investing basics*
chapter.

## Usage

``` r
future_value_series(contribution, rate, periods)
```

## Arguments

- contribution:

  Amount contributed each period.

- rate:

  Return per period, as a decimal.

- periods:

  Number of periods.

## Value

A numeric vector of ending balances.

## See also

Other investing basics:
[`future_value()`](https://mjfrigaard.github.io/perfinr/reference/future_value.md),
[`real_return()`](https://mjfrigaard.github.io/perfinr/reference/real_return.md),
[`rule_of_72()`](https://mjfrigaard.github.io/perfinr/reference/rule_of_72.md)

## Examples

``` r
# $500/month for 30 years at 7% a year
future_value_series(contribution = 500, rate = 0.07 / 12, periods = 30 * 12)
#> [1] 609985.5
```
