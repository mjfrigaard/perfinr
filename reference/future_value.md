# Future value of a one time investment

Compounds `present_value` once per year. From the *Investing basics*
chapter.

## Usage

``` r
future_value(present_value, rate, years)
```

## Arguments

- present_value:

  Amount invested today.

- rate:

  Yearly return, as a decimal.

- years:

  Number of years.

## Value

A numeric vector of future values.

## See also

Other investing basics:
[`future_value_series()`](https://mjfrigaard.github.io/perfinr/reference/future_value_series.md),
[`real_return()`](https://mjfrigaard.github.io/perfinr/reference/real_return.md),
[`rule_of_72()`](https://mjfrigaard.github.io/perfinr/reference/rule_of_72.md)

## Examples

``` r
# $10,000 at 7% for 10 years
future_value(present_value = 10000, rate = 0.07, years = 10)
#> [1] 19671.51

# same $10,000 across several horizons
future_value(present_value = 10000, rate = 0.07, years = c(5, 10, 20, 30))
#> [1] 14025.52 19671.51 38696.84 76122.55
```
