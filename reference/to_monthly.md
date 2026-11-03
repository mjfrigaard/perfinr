# Convert a daily, weekly, or yearly amount to a monthly amount

Uses 30.44 days and 4.33 weeks per month. From the *Budgeting* chapter.

## Usage

``` r
to_monthly(amount, period = c("daily", "weekly", "annual"))
```

## Arguments

- amount:

  Amount per `period`.

- period:

  One of `"daily"`, `"weekly"`, or `"annual"`.

## Value

A numeric vector of monthly amounts.

## See also

Other budgeting:
[`months_to_break_even()`](https://mjfrigaard.github.io/perfinr/reference/months_to_break_even.md),
[`opportunity_cost()`](https://mjfrigaard.github.io/perfinr/reference/opportunity_cost.md),
[`percent_of_income()`](https://mjfrigaard.github.io/perfinr/reference/percent_of_income.md),
[`to_annual()`](https://mjfrigaard.github.io/perfinr/reference/to_annual.md)

## Examples

``` r
to_monthly(5, period = "daily")
#> [1] 152.2
to_monthly(60000, period = "annual")
#> [1] 5000
```
