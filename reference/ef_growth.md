# Emergency fund balance after interest

Grows a balance at an annual percentage yield (APY) for a number of
months. From the *Emergency fund* chapter.

## Usage

``` r
ef_growth(balance, apy, months)
```

## Arguments

- balance:

  Starting balance.

- apy:

  Annual percentage yield, as a decimal.

- months:

  Number of months.

## Value

A numeric vector of balances.

## See also

Other emergency fund:
[`emergency_fund_target()`](https://mjfrigaard.github.io/perfinr/reference/emergency_fund_target.md),
[`monthly_contribution_needed()`](https://mjfrigaard.github.io/perfinr/reference/monthly_contribution_needed.md),
[`months_to_ef_goal()`](https://mjfrigaard.github.io/perfinr/reference/months_to_ef_goal.md)

## Examples

``` r
# $9,600 at 4% APY for 12 months
ef_growth(balance = 9600, apy = 0.04, months = 12)
#> [1] 9984
```
