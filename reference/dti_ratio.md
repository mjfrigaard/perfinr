# Debt to income (DTI) ratio

Monthly debt payments as a percent of gross monthly income. From the
*Managing debt* chapter.

## Usage

``` r
dti_ratio(monthly_debt_payments, gross_monthly_income)
```

## Arguments

- monthly_debt_payments:

  Total monthly debt payments.

- gross_monthly_income:

  Gross (before tax) monthly income. Must be greater than 0.

## Value

A numeric vector of percentages.

## See also

Other managing debt:
[`apr_to_apy()`](https://mjfrigaard.github.io/perfinr/reference/apr_to_apy.md),
[`credit_utilization()`](https://mjfrigaard.github.io/perfinr/reference/credit_utilization.md),
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
# $1,061 in debt payments on $3,750 gross income
dti_ratio(monthly_debt_payments = 1061, gross_monthly_income = 3750)
#> [1] 28.29333
```
