# Student loan total relative to expected salary

A ratio above 1 means you owe more than a year of starting pay. From the
*Managing debt* chapter.

## Usage

``` r
loan_income_ratio(loan_total, expected_salary)
```

## Arguments

- loan_total:

  Total student loan balance.

- expected_salary:

  Expected yearly starting salary. Must be greater than 0.

## Value

A numeric vector of ratios.

## See also

Other managing debt:
[`apr_to_apy()`](https://mjfrigaard.github.io/perfinr/reference/apr_to_apy.md),
[`credit_utilization()`](https://mjfrigaard.github.io/perfinr/reference/credit_utilization.md),
[`dti_ratio()`](https://mjfrigaard.github.io/perfinr/reference/dti_ratio.md),
[`idr_monthly_payment()`](https://mjfrigaard.github.io/perfinr/reference/idr_monthly_payment.md),
[`monthly_standard_payment()`](https://mjfrigaard.github.io/perfinr/reference/monthly_standard_payment.md),
[`months_to_payoff()`](https://mjfrigaard.github.io/perfinr/reference/months_to_payoff.md),
[`order_avalanche()`](https://mjfrigaard.github.io/perfinr/reference/order_avalanche.md),
[`order_snowball()`](https://mjfrigaard.github.io/perfinr/reference/order_snowball.md),
[`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md),
[`total_interest()`](https://mjfrigaard.github.io/perfinr/reference/total_interest.md)

## Examples

``` r
# $45,000 in loans, $42,000 expected starting salary
loan_income_ratio(loan_total = 45000, expected_salary = 42000)
#> [1] 1.071429
```
