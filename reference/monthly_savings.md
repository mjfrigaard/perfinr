# Monthly savings at a given savings rate

The "pay yourself first" amount: gross monthly income times the savings
rate. From the *Automating savings* chapter.

## Usage

``` r
monthly_savings(gross_monthly_income, savings_rate)
```

## Arguments

- gross_monthly_income:

  Gross (before tax) monthly income.

- savings_rate:

  Share of income to save, as a decimal.

## Value

A numeric vector of monthly savings amounts.

## Examples

``` r
# $4,000 gross monthly income, 20% savings rate
monthly_savings(gross_monthly_income = 4000, savings_rate = 0.20)
#> [1] 800
```
