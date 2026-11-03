# Convert an APR to an APY

The effective yearly rate of an annual percentage rate (APR) compounded
`periods_per_year` times. From the *Managing debt* chapter.

## Usage

``` r
apr_to_apy(apr, periods_per_year = 365)
```

## Arguments

- apr:

  Annual percentage rate, as a decimal.

- periods_per_year:

  Compounding periods per year. Defaults to 365 (daily, as most credit
  cards compound). Must be greater than 0.

## Value

A numeric vector of APYs, as decimals.

## See also

Other managing debt:
[`credit_utilization()`](https://mjfrigaard.github.io/perfinr/reference/credit_utilization.md),
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
# 24% APR compounded daily
apr_to_apy(apr = 0.24)
#> [1] 0.2711489
```
