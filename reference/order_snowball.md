# Order debts for the snowball method

Smallest balance first. From the *Managing debt* chapter.

## Usage

``` r
order_snowball(debts)
```

## Arguments

- debts:

  A data frame with a numeric `balance` column.

## Value

`debts`, reordered by `balance` from smallest to largest.

## See also

Other managing debt:
[`apr_to_apy()`](https://mjfrigaard.github.io/perfinr/reference/apr_to_apy.md),
[`credit_utilization()`](https://mjfrigaard.github.io/perfinr/reference/credit_utilization.md),
[`dti_ratio()`](https://mjfrigaard.github.io/perfinr/reference/dti_ratio.md),
[`idr_monthly_payment()`](https://mjfrigaard.github.io/perfinr/reference/idr_monthly_payment.md),
[`loan_income_ratio()`](https://mjfrigaard.github.io/perfinr/reference/loan_income_ratio.md),
[`monthly_standard_payment()`](https://mjfrigaard.github.io/perfinr/reference/monthly_standard_payment.md),
[`months_to_payoff()`](https://mjfrigaard.github.io/perfinr/reference/months_to_payoff.md),
[`order_avalanche()`](https://mjfrigaard.github.io/perfinr/reference/order_avalanche.md),
[`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md),
[`total_interest()`](https://mjfrigaard.github.io/perfinr/reference/total_interest.md)

## Examples

``` r
debts <- data.frame(
  name = c("Card A", "Card B", "Card C"),
  balance = c(1000, 5000, 2000),
  apr = c(0.18, 0.24, 0.15)
)
order_snowball(debts)
#>     name balance  apr
#> 1 Card A    1000 0.18
#> 3 Card C    2000 0.15
#> 2 Card B    5000 0.24
```
