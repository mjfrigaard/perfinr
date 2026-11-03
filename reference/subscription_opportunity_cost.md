# What a subscription would grow to if invested instead

Invests the yearly cost of a subscription at the end of each year. From
the *Tracking spending* chapter.

## Usage

``` r
subscription_opportunity_cost(monthly_cost, years, rate = 0.07)
```

## Arguments

- monthly_cost:

  Monthly subscription cost.

- years:

  Number of years.

- rate:

  Yearly return, as a decimal. Defaults to 0.07.

## Value

A numeric vector of ending balances.

## See also

Other tracking spending:
[`apply_rules()`](https://mjfrigaard.github.io/perfinr/reference/apply_rules.md)

## Examples

``` r
# a $15/month subscription over 30 years
subscription_opportunity_cost(monthly_cost = 15, years = 30)
#> [1] 17002.94
```
