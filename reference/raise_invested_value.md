# Future value of investing part of a raise

Invests `monthly_raise * invest_share` every month, compounded monthly.
From the *Income* chapter.

## Usage

``` r
raise_invested_value(monthly_raise, invest_share, rate, years)
```

## Arguments

- monthly_raise:

  Monthly increase in take home pay.

- invest_share:

  Share of the raise invested, as a decimal.

- rate:

  Yearly return, as a decimal.

- years:

  Number of years.

## Value

A numeric vector of ending balances.

## See also

Other income:
[`fixed_cost_ratio()`](https://mjfrigaard.github.io/perfinr/reference/fixed_cost_ratio.md),
[`wealth_formula()`](https://mjfrigaard.github.io/perfinr/reference/wealth_formula.md)

## Examples

``` r
# invest half of a $200/month raise at 7% for 30 years
raise_invested_value(200, invest_share = 0.5, rate = 0.07, years = 30)
#> [1] 121997.1
```
