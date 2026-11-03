# Monthly deposit needed to reach a savings goal

The level monthly deposit that grows to `goal` in `months` at
`annual_rate`, compounded monthly. At a 0% rate this is `goal / months`.
From the *Financial goals* chapter.

## Usage

``` r
monthly_for_goal(goal, annual_rate, months)
```

## Arguments

- goal:

  Target amount.

- annual_rate:

  Yearly interest rate, as a decimal.

- months:

  Number of monthly deposits. Must be greater than 0.

## Value

A numeric vector of monthly deposits.

## See also

Other financial goals:
[`months_to_fund()`](https://mjfrigaard.github.io/perfinr/reference/months_to_fund.md)

## Examples

``` r
# $15,000 in 5 years at 4%, compared to no interest
monthly_for_goal(goal = 15000, annual_rate = 0.04, months = 60)
#> [1] 226.2478
monthly_for_goal(goal = 15000, annual_rate = 0, months = 60)
#> [1] 250
```
