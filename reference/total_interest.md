# Total interest paid over a loan

All payments minus the amount borrowed. From the *Managing debt*
chapter.

## Usage

``` r
total_interest(monthly_payment, n_months, principal)
```

## Arguments

- monthly_payment:

  Monthly payment.

- n_months:

  Number of payments.

- principal:

  Amount borrowed.

## Value

A numeric vector of total interest.

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
[`order_snowball()`](https://mjfrigaard.github.io/perfinr/reference/order_snowball.md),
[`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md)

## Examples

``` r
# 6-year car loan vs. 4-year, $20,000 principal at 7%
total_interest(monthly_payment = 340.98, n_months = 72, principal = 20000)
#> [1] 4550.56
total_interest(monthly_payment = 478.92, n_months = 48, principal = 20000)
#> [1] 2988.16
```
