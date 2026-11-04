# Paychecks in a year for a pay frequency

A biweekly schedule pays 26 times a year, not 24, so two months a year
bring a third paycheck. Use this count, not `365 / pay_period_days()`,
to turn one paycheck into a yearly figure.

## Usage

``` r
pay_periods_per_year(frequency)
```

## Arguments

- frequency:

  One of `"weekly"`, `"biweekly"`, `"semimonthly"`, or `"monthly"`.

## Value

An integer number of pay periods.

## See also

Other income:
[`fixed_cost_ratio()`](https://mjfrigaard.github.io/perfinr/reference/fixed_cost_ratio.md),
[`pay_frequency_from_days()`](https://mjfrigaard.github.io/perfinr/reference/pay_frequency_from_days.md),
[`pay_period_days()`](https://mjfrigaard.github.io/perfinr/reference/pay_period_days.md),
[`pay_period_full_time_hours()`](https://mjfrigaard.github.io/perfinr/reference/pay_period_full_time_hours.md),
[`raise_invested_value()`](https://mjfrigaard.github.io/perfinr/reference/raise_invested_value.md),
[`wealth_formula()`](https://mjfrigaard.github.io/perfinr/reference/wealth_formula.md)

## Examples

``` r
pay_periods_per_year("biweekly")
#> [1] 26
2500 * pay_periods_per_year("biweekly") # a year of $2,500 paychecks
#> [1] 65000
```
