# Income driven repayment (IDR) monthly payment

Discretionary income is adjusted gross income (AGI) above
`threshold_pct` times the poverty guideline. The yearly payment is
`payment_rate` of that, split into 12 months and rounded to cents. From
the *Managing debt* chapter.

## Usage

``` r
idr_monthly_payment(
  agi,
  poverty_guideline = 15960,
  threshold_pct = 1.5,
  payment_rate = 0.1
)
```

## Arguments

- agi:

  Adjusted gross income.

- poverty_guideline:

  Federal poverty guideline for the household size. Defaults to 15960
  (one person).

- threshold_pct:

  Multiple of the poverty guideline that is protected. Defaults to 1.5
  (150%).

- payment_rate:

  Share of discretionary income paid each year. Defaults to 0.10.

## Value

A numeric vector of monthly payments.

## See also

Other managing debt:
[`apr_to_apy()`](https://mjfrigaard.github.io/perfinr/reference/apr_to_apy.md),
[`credit_utilization()`](https://mjfrigaard.github.io/perfinr/reference/credit_utilization.md),
[`dti_ratio()`](https://mjfrigaard.github.io/perfinr/reference/dti_ratio.md),
[`loan_income_ratio()`](https://mjfrigaard.github.io/perfinr/reference/loan_income_ratio.md),
[`monthly_standard_payment()`](https://mjfrigaard.github.io/perfinr/reference/monthly_standard_payment.md),
[`months_to_payoff()`](https://mjfrigaard.github.io/perfinr/reference/months_to_payoff.md),
[`order_avalanche()`](https://mjfrigaard.github.io/perfinr/reference/order_avalanche.md),
[`order_snowball()`](https://mjfrigaard.github.io/perfinr/reference/order_snowball.md),
[`payoff_vs_invest()`](https://mjfrigaard.github.io/perfinr/reference/payoff_vs_invest.md),
[`total_interest()`](https://mjfrigaard.github.io/perfinr/reference/total_interest.md)

## Examples

``` r
# IBR: $50,000 AGI, 150% threshold, 10% rate
idr_monthly_payment(agi = 50000)
#> [1] 217.17

# IBR for loans before July 2014: 15% rate
idr_monthly_payment(agi = 50000, payment_rate = 0.15)
#> [1] 325.75
```
