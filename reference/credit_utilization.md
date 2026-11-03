# Credit utilization

Card balance as a percent of the credit limit. From the *Managing debt*
chapter.

## Usage

``` r
credit_utilization(balance, credit_limit)
```

## Arguments

- balance:

  Card balance.

- credit_limit:

  Credit limit. Must be greater than 0.

## Value

A numeric vector of percentages.

## See also

Other managing debt:
[`apr_to_apy()`](https://mjfrigaard.github.io/perfinr/reference/apr_to_apy.md),
[`dti_ratio()`](https://mjfrigaard.github.io/perfinr/reference/dti_ratio.md),
[`idr_monthly_payment()`](https://mjfrigaard.github.io/perfinr/reference/idr_monthly_payment.md),
[`loan_income_ratio()`](https://mjfrigaard.github.io/perfinr/reference/loan_income_ratio.md),
[`monthly_standard_payment()`](https://mjfrigaard.github.io/perfinr/reference/monthly_standard_payment.md),
[`months_to_payoff()`](https://mjfrigaard.github.io/perfinr/reference/months_to_payoff.md),
[`order_avalanche()`](https://mjfrigaard.github.io/perfinr/reference/order_avalanche.md),
[`order_snowball()`](https://mjfrigaard.github.io/perfinr/reference/order_snowball.md),
[`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md),
[`total_interest()`](https://mjfrigaard.github.io/perfinr/reference/total_interest.md)

## Examples

``` r
# $900 balance on a $3,000 limit
credit_utilization(balance = 900, credit_limit = 3000)
#> [1] 30
```
