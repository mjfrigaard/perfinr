# Full-time hours in one pay period

Assumes a 40-hour week, so the result depends on the frequency alone.

## Usage

``` r
pay_period_full_time_hours(frequency)
```

## Arguments

- frequency:

  One of `"weekly"`, `"biweekly"`, `"semimonthly"`, or `"monthly"`.

## Value

Hours: `40`, `80`, about `85.7`, or about `171.4`.

## See also

Other income:
[`fixed_cost_ratio()`](https://mjfrigaard.github.io/perfinr/reference/fixed_cost_ratio.md),
[`pay_frequency_from_days()`](https://mjfrigaard.github.io/perfinr/reference/pay_frequency_from_days.md),
[`pay_period_days()`](https://mjfrigaard.github.io/perfinr/reference/pay_period_days.md),
[`pay_periods_per_year()`](https://mjfrigaard.github.io/perfinr/reference/pay_periods_per_year.md),
[`raise_invested_value()`](https://mjfrigaard.github.io/perfinr/reference/raise_invested_value.md),
[`wealth_formula()`](https://mjfrigaard.github.io/perfinr/reference/wealth_formula.md)

## Examples

``` r
pay_period_full_time_hours("biweekly")
#> [1] 80
```
