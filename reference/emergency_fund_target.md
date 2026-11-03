# Emergency fund target

Monthly essential expenses times the number of months to cover. From the
*Emergency fund* chapter.

## Usage

``` r
emergency_fund_target(monthly_expenses, months = 3)
```

## Arguments

- monthly_expenses:

  Essential expenses per month.

- months:

  Months of expenses to cover. Defaults to 3.

## Value

A numeric vector of target balances.

## See also

Other emergency fund:
[`ef_growth()`](https://mjfrigaard.github.io/perfinr/reference/ef_growth.md),
[`monthly_contribution_needed()`](https://mjfrigaard.github.io/perfinr/reference/monthly_contribution_needed.md),
[`months_to_ef_goal()`](https://mjfrigaard.github.io/perfinr/reference/months_to_ef_goal.md)

## Examples

``` r
# $2,400/month in essential expenses, 3-month and 6-month targets
emergency_fund_target(monthly_expenses = 2400, months = 3)
#> [1] 7200
emergency_fund_target(monthly_expenses = 2400, months = 6)
#> [1] 14400
```
