# Return after inflation

The exact (Fisher) real return. From the *Investing basics* chapter.

## Usage

``` r
real_return(nominal, inflation)
```

## Arguments

- nominal:

  Nominal yearly return, as a decimal.

- inflation:

  Yearly inflation rate, as a decimal.

## Value

A numeric vector of real returns, as decimals.

## See also

Other investing basics:
[`future_value()`](https://mjfrigaard.github.io/perfinr/reference/future_value.md),
[`future_value_series()`](https://mjfrigaard.github.io/perfinr/reference/future_value_series.md),
[`rule_of_72()`](https://mjfrigaard.github.io/perfinr/reference/rule_of_72.md)

## Examples

``` r
# 7% nominal return against 3% inflation
real_return(nominal = 0.07, inflation = 0.03)
#> [1] 0.03883495
```
