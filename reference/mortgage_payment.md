# Monthly payment on a fixed rate loan

The standard amortization formula with monthly compounding. At a 0% rate
this is `principal / (years * 12)`. From the *Major purchases* chapter.

## Usage

``` r
mortgage_payment(principal, annual_rate, years)
```

## Arguments

- principal:

  Loan amount.

- annual_rate:

  Yearly interest rate, as a decimal.

- years:

  Loan term in years. Must be greater than 0.

## Value

A numeric vector of monthly payments.

## See also

Other major purchases:
[`first_payment_split()`](https://mjfrigaard.github.io/perfinr/reference/first_payment_split.md),
[`rent_buy_threshold()`](https://mjfrigaard.github.io/perfinr/reference/rent_buy_threshold.md)

## Examples

``` r
# $480,000 loan at 6% over 30 years
mortgage_payment(principal = 480000, annual_rate = 0.06, years = 30)
#> [1] 2877.843
```
