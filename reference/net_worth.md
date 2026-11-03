# Net worth

Total assets minus total debts. From the *Estate planning* chapter.

## Usage

``` r
net_worth(assets, debts)
```

## Arguments

- assets:

  Numeric vector of asset values.

- debts:

  Numeric vector of debt balances.

## Value

A single number.

## See also

Other estate planning:
[`beneficiary_share()`](https://mjfrigaard.github.io/perfinr/reference/beneficiary_share.md)

## Examples

``` r
assets <- c(k401 = 12000, roth_ira = 6000, savings = 8000, car = 9000)
debts <- c(car_loan = 6000, credit_card = 1000)
net_worth(assets, debts)
#> [1] 28000
```
