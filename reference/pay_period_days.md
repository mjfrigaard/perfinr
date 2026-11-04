# Days in one pay period

The nominal length of a pay period, for display. `"semimonthly"` (15)
and `"monthly"` (30) are round numbers, so don't annualize with them;
use
[`pay_periods_per_year()`](https://mjfrigaard.github.io/perfinr/reference/pay_periods_per_year.md)
instead.

## Usage

``` r
pay_period_days(frequency)
```

## Arguments

- frequency:

  One of `"weekly"`, `"biweekly"`, `"semimonthly"`, or `"monthly"`.

## Value

A number of days: `7`, `14`, `15`, or `30`.

## See also

Other income:
[`fixed_cost_ratio()`](https://mjfrigaard.github.io/perfinr/reference/fixed_cost_ratio.md),
[`pay_frequency_from_days()`](https://mjfrigaard.github.io/perfinr/reference/pay_frequency_from_days.md),
[`pay_period_full_time_hours()`](https://mjfrigaard.github.io/perfinr/reference/pay_period_full_time_hours.md),
[`pay_periods_per_year()`](https://mjfrigaard.github.io/perfinr/reference/pay_periods_per_year.md),
[`raise_invested_value()`](https://mjfrigaard.github.io/perfinr/reference/raise_invested_value.md),
[`wealth_formula()`](https://mjfrigaard.github.io/perfinr/reference/wealth_formula.md)

## Examples

``` r
pay_period_days("biweekly")
#> [1] 14
```
