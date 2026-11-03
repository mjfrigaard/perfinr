# Fixed costs as a percent of take home pay

From the *Income* chapter.

## Usage

``` r
fixed_cost_ratio(fixed_costs, take_home)
```

## Arguments

- fixed_costs:

  Monthly fixed costs (rent, insurance, loan payments).

- take_home:

  Monthly take home pay. Must be greater than 0.

## Value

A numeric vector of percentages.

## See also

Other income:
[`raise_invested_value()`](https://mjfrigaard.github.io/perfinr/reference/raise_invested_value.md),
[`wealth_formula()`](https://mjfrigaard.github.io/perfinr/reference/wealth_formula.md)

## Examples

``` r
fixed_cost_ratio(fixed_costs = 1800, take_home = 3200)
#> [1] 56.25
```
