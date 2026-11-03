# Monthly payment on a standard student loan plan

[`mortgage_payment()`](https://mjfrigaard.github.io/perfinr/reference/mortgage_payment.md)
with federal student loan defaults: 6.5% over 10 years. From the
*Managing debt* chapter.

## Usage

``` r
monthly_standard_payment(principal, annual_rate = 0.065, years = 10)
```

## Arguments

- principal:

  Loan amount.

- annual_rate:

  Yearly interest rate, as a decimal. Defaults to 0.065.

- years:

  Repayment term in years. Defaults to 10.

## Value

A numeric vector of monthly payments.

## See also

Other managing debt:
[`apr_to_apy()`](https://mjfrigaard.github.io/perfinr/reference/apr_to_apy.md),
[`credit_utilization()`](https://mjfrigaard.github.io/perfinr/reference/credit_utilization.md),
[`dti_ratio()`](https://mjfrigaard.github.io/perfinr/reference/dti_ratio.md),
[`idr_monthly_payment()`](https://mjfrigaard.github.io/perfinr/reference/idr_monthly_payment.md),
[`loan_income_ratio()`](https://mjfrigaard.github.io/perfinr/reference/loan_income_ratio.md),
[`months_to_payoff()`](https://mjfrigaard.github.io/perfinr/reference/months_to_payoff.md),
[`order_avalanche()`](https://mjfrigaard.github.io/perfinr/reference/order_avalanche.md),
[`order_snowball()`](https://mjfrigaard.github.io/perfinr/reference/order_snowball.md),
[`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md),
[`total_interest()`](https://mjfrigaard.github.io/perfinr/reference/total_interest.md)

## Examples

``` r
# standard 10-year monthly payment on $45,000
monthly_standard_payment(principal = 45000)
#> [1] 510.9659
```
