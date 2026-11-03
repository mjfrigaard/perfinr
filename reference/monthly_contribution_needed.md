# Monthly contribution needed to reach a target by a deadline

Rounds up to whole dollars and returns 0 when the target is already met.
From the *Emergency fund* chapter.

## Usage

``` r
monthly_contribution_needed(target, current_balance, months)
```

## Arguments

- target:

  Target balance.

- current_balance:

  Amount already saved.

- months:

  Months until the deadline. Must be greater than 0.

## Value

A numeric vector of whole dollar monthly contributions.

## See also

Other emergency fund:
[`ef_growth()`](https://mjfrigaard.github.io/perfinr/reference/ef_growth.md),
[`emergency_fund_target()`](https://mjfrigaard.github.io/perfinr/reference/emergency_fund_target.md),
[`months_to_ef_goal()`](https://mjfrigaard.github.io/perfinr/reference/months_to_ef_goal.md)

## Examples

``` r
# $9,600 target, $1,200 saved, want to finish in 18 months
monthly_contribution_needed(target = 9600, current_balance = 1200, months = 18)
#> [1] 467
```
