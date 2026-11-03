# Savings rate

Income left after spending, as a percent of income. From the *Savings
strategies* chapter.

## Usage

``` r
savings_rate(income, spending)
```

## Arguments

- income:

  Income for the period. Must be greater than 0.

- spending:

  Spending for the same period.

## Value

A numeric vector of percentages.

## Examples

``` r
# $3,200 take home, $2,720 spent
savings_rate(income = 3200, spending = 2720)
#> [1] 15
```
