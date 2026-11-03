# Interest and principal in the first loan payment

From the *Major purchases* chapter.

## Usage

``` r
first_payment_split(principal, annual_rate, years)
```

## Arguments

- principal:

  Loan amount (a single number).

- annual_rate:

  Yearly interest rate, as a decimal (a single number).

- years:

  Loan term in years (a single number).

## Value

A one row data frame with columns `payment`, `interest`, `principal`,
and `pct_interest` (the percent of the payment that is interest).

## See also

Other major purchases:
[`mortgage_payment()`](https://mjfrigaard.github.io/perfinr/reference/mortgage_payment.md),
[`rent_buy_threshold()`](https://mjfrigaard.github.io/perfinr/reference/rent_buy_threshold.md)

## Examples

``` r
# first payment on a $480,000 loan at 6% over 30 years
first_payment_split(principal = 480000, annual_rate = 0.06, years = 30)
#>    payment interest principal pct_interest
#> 1 2877.843     2400  477.8425     83.39581
```
