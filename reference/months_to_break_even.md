# Months until an upfront cost pays for itself

From the *Budgeting* chapter.

## Usage

``` r
months_to_break_even(upfront_cost, monthly_savings)
```

## Arguments

- upfront_cost:

  One time cost.

- monthly_savings:

  Amount saved each month because of the purchase. Must be greater than
  0.

## Value

A numeric vector of months (not rounded).

## See also

Other budgeting:
[`opportunity_cost()`](https://mjfrigaard.github.io/perfinr/reference/opportunity_cost.md),
[`percent_of_income()`](https://mjfrigaard.github.io/perfinr/reference/percent_of_income.md),
[`to_annual()`](https://mjfrigaard.github.io/perfinr/reference/to_annual.md),
[`to_monthly()`](https://mjfrigaard.github.io/perfinr/reference/to_monthly.md)

## Examples

``` r
# $600 upfront to save $50 a month
months_to_break_even(upfront_cost = 600, monthly_savings = 50)
#> [1] 12
```
