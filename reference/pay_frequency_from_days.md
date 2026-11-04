# The pay frequency for a period length in days

The inverse of
[`pay_period_days()`](https://mjfrigaard.github.io/perfinr/reference/pay_period_days.md).
Each frequency has its own day count, so the match is never ambiguous.

## Usage

``` r
pay_frequency_from_days(days)
```

## Arguments

- days:

  A day count, as
  [`pay_period_days()`](https://mjfrigaard.github.io/perfinr/reference/pay_period_days.md)
  returns.

## Value

The frequency, or `NA_character_` when `days` is `NA` or matches none.

## See also

Other income:
[`fixed_cost_ratio()`](https://mjfrigaard.github.io/perfinr/reference/fixed_cost_ratio.md),
[`pay_period_days()`](https://mjfrigaard.github.io/perfinr/reference/pay_period_days.md),
[`pay_period_full_time_hours()`](https://mjfrigaard.github.io/perfinr/reference/pay_period_full_time_hours.md),
[`pay_periods_per_year()`](https://mjfrigaard.github.io/perfinr/reference/pay_periods_per_year.md),
[`raise_invested_value()`](https://mjfrigaard.github.io/perfinr/reference/raise_invested_value.md),
[`wealth_formula()`](https://mjfrigaard.github.io/perfinr/reference/wealth_formula.md)

## Examples

``` r
pay_frequency_from_days(14)
#> [1] "biweekly"
pay_frequency_from_days(10)
#> [1] NA
```
