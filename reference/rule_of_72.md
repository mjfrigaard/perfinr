# Years for money to double (rule of 72)

A quick estimate: 72 divided by the yearly return in percent. From the
*Investing basics* chapter.

## Usage

``` r
rule_of_72(annual_return_pct)
```

## Arguments

- annual_return_pct:

  Yearly return as a percent (`7` is 7%), not a decimal. Must be greater
  than 0.

## Value

A numeric vector of years.

## See also

Other investing basics:
[`future_value()`](https://mjfrigaard.github.io/perfinr/reference/future_value.md),
[`future_value_series()`](https://mjfrigaard.github.io/perfinr/reference/future_value_series.md),
[`real_return()`](https://mjfrigaard.github.io/perfinr/reference/real_return.md)

## Examples

``` r
rule_of_72(annual_return_pct = 7)
#> [1] 10.28571
```
