# Months to pay off a balance with a fixed payment

Interest compounds monthly at `apr / 12`. The result is not rounded; the
last payment is a partial one. Errors when the payment does not cover
the first month's interest, because the balance would never be paid off.
From the *Managing debt* chapter.

## Usage

``` r
months_to_payoff(balance, monthly_payment, apr)
```

## Arguments

- balance:

  Current balance. Must be greater than 0.

- monthly_payment:

  Fixed monthly payment. Must be greater than 0.

- apr:

  Annual percentage rate, as a decimal.

## Value

A numeric vector of months.

## See also

Other managing debt:
[`apr_to_apy()`](https://mjfrigaard.github.io/perfinr/reference/apr_to_apy.md),
[`credit_utilization()`](https://mjfrigaard.github.io/perfinr/reference/credit_utilization.md),
[`dti_ratio()`](https://mjfrigaard.github.io/perfinr/reference/dti_ratio.md),
[`idr_monthly_payment()`](https://mjfrigaard.github.io/perfinr/reference/idr_monthly_payment.md),
[`loan_income_ratio()`](https://mjfrigaard.github.io/perfinr/reference/loan_income_ratio.md),
[`monthly_standard_payment()`](https://mjfrigaard.github.io/perfinr/reference/monthly_standard_payment.md),
[`order_avalanche()`](https://mjfrigaard.github.io/perfinr/reference/order_avalanche.md),
[`order_snowball()`](https://mjfrigaard.github.io/perfinr/reference/order_snowball.md),
[`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md),
[`total_interest()`](https://mjfrigaard.github.io/perfinr/reference/total_interest.md)

## Examples

``` r
# $5,000 balance, $100/month, 22% APR
months_to_payoff(balance = 5000, monthly_payment = 100, apr = 0.22)
#> [1] 136.7791
```
