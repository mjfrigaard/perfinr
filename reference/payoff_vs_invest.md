# Pay off a loan or invest the difference

Compares a loan's interest rate to an expected investment return. From
the *Managing debt* chapter.

## Usage

``` r
payoff_vs_invest(loan_rate, expected_return)
```

## Arguments

- loan_rate:

  Loan interest rate, as a decimal (a single number).

- expected_return:

  Expected yearly return, as a decimal (a single number).

## Value

A single string: `"Pay off the debt"`, `"Invest the difference"`, or
`"Roughly a wash; do both"`.

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
[`total_interest()`](https://mjfrigaard.github.io/perfinr/reference/total_interest.md)

## Examples

``` r
# 5% student loan vs. expected 7% return
payoff_vs_invest(loan_rate = 0.05, expected_return = 0.07)
#> [1] "Invest the difference"
```
