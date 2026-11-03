# Months to reach an emergency fund target

Rounds up to whole months and returns 0 when the target is already met.
From the *Emergency fund* chapter.

## Usage

``` r
months_to_ef_goal(target, current_balance, monthly_contribution)
```

## Arguments

- target:

  Target balance.

- current_balance:

  Amount already saved.

- monthly_contribution:

  Amount added each month. Must be greater than 0.

## Value

A numeric vector of whole months.

## See also

Other emergency fund:
[`ef_growth()`](https://mjfrigaard.github.io/perfinr/reference/ef_growth.md),
[`emergency_fund_target()`](https://mjfrigaard.github.io/perfinr/reference/emergency_fund_target.md),
[`monthly_contribution_needed()`](https://mjfrigaard.github.io/perfinr/reference/monthly_contribution_needed.md)

## Examples

``` r
# $9,600 target, $1,200 saved, $400/month contribution
months_to_ef_goal(target = 9600, current_balance = 1200, monthly_contribution = 400)
#> [1] 21
```
