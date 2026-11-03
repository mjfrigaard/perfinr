# Monthly rent that matches the unrecoverable cost of owning

The 5% rule: yearly unrecoverable costs of owning (property tax,
maintenance, cost of capital) are about 5% of the home value. Rent below
this monthly amount favors renting. From the *Major purchases* chapter.

## Usage

``` r
rent_buy_threshold(home_value, unrecoverable_rate = 0.05)
```

## Arguments

- home_value:

  Price of the home.

- unrecoverable_rate:

  Yearly unrecoverable cost as a share of home value. Defaults to 0.05.

## Value

A numeric vector of monthly rent thresholds.

## See also

Other major purchases:
[`first_payment_split()`](https://mjfrigaard.github.io/perfinr/reference/first_payment_split.md),
[`mortgage_payment()`](https://mjfrigaard.github.io/perfinr/reference/mortgage_payment.md)

## Examples

``` r
# $500,000 home at the standard 5% rate
rent_buy_threshold(home_value = 500000)
#> [1] 2083.333
```
