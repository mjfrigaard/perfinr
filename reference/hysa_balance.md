# High yield savings account balance

Grows a principal at an annual percentage yield (APY). From the *High
yield accounts* chapter.

## Usage

``` r
hysa_balance(principal, annual_apy, years = 1)
```

## Arguments

- principal:

  Starting balance.

- annual_apy:

  Annual percentage yield, as a decimal.

- years:

  Number of years. Defaults to 1.

## Value

A numeric vector of balances.

## Examples

``` r
# $9,600 at 4% APY after 1 year, then after 5 years
hysa_balance(principal = 9600, annual_apy = 0.04, years = 1)
#> [1] 9984
hysa_balance(principal = 9600, annual_apy = 0.04, years = 5)
#> [1] 11679.87
```
