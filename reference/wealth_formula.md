# Wealth from saving part of an income every year

The future value of saving `median_income * savings_rate` at the end of
each year (contributions plus growth). From the *Income* chapter.

## Usage

``` r
wealth_formula(median_income, savings_rate, annual_return, years)
```

## Arguments

- median_income:

  Yearly income.

- savings_rate:

  Share of income saved, as a decimal.

- annual_return:

  Yearly return, as a decimal.

- years:

  Number of years.

## Value

A numeric vector of ending balances.

## See also

Other income:
[`fixed_cost_ratio()`](https://mjfrigaard.github.io/perfinr/reference/fixed_cost_ratio.md),
[`raise_invested_value()`](https://mjfrigaard.github.io/perfinr/reference/raise_invested_value.md)

## Examples

``` r
# $45,000 income, 20% saved, 7% return, 30 years
wealth_formula(45000, savings_rate = 0.20, annual_return = 0.07, years = 30)
#> [1] 850147.1
```
