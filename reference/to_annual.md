# Convert a daily, weekly, or monthly amount to a yearly amount

Uses 365 days, 52 weeks, and 12 months per year. From the *Budgeting*
chapter.

## Usage

``` r
to_annual(amount, period = c("daily", "weekly", "monthly"))
```

## Arguments

- amount:

  Amount per `period`.

- period:

  One of `"daily"`, `"weekly"`, or `"monthly"`.

## Value

A numeric vector of yearly amounts.

## See also

Other budgeting:
[`months_to_break_even()`](https://mjfrigaard.github.io/perfinr/reference/months_to_break_even.md),
[`opportunity_cost()`](https://mjfrigaard.github.io/perfinr/reference/opportunity_cost.md),
[`percent_of_income()`](https://mjfrigaard.github.io/perfinr/reference/percent_of_income.md),
[`to_monthly()`](https://mjfrigaard.github.io/perfinr/reference/to_monthly.md)

## Examples

``` r
to_annual(5, period = "daily")
#> [1] 1825
to_annual(1500, period = "monthly")
#> [1] 18000
```
