# What money spent today could grow to

The future value of a one time amount if it were invested instead of
spent. From the *Budgeting* chapter.

## Usage

``` r
opportunity_cost(amount, rate, years)
```

## Arguments

- amount:

  Amount spent today.

- rate:

  Yearly return, as a decimal.

- years:

  Number of years.

## Value

A numeric vector of future values.

## See also

Other budgeting:
[`months_to_break_even()`](https://mjfrigaard.github.io/perfinr/reference/months_to_break_even.md),
[`percent_of_income()`](https://mjfrigaard.github.io/perfinr/reference/percent_of_income.md),
[`to_annual()`](https://mjfrigaard.github.io/perfinr/reference/to_annual.md),
[`to_monthly()`](https://mjfrigaard.github.io/perfinr/reference/to_monthly.md)

## Examples

``` r
# $1,000 invested at 7% for 30 years
opportunity_cost(amount = 1000, rate = 0.07, years = 30)
#> [1] 7612.255
```
