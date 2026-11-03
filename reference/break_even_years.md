# Years for a higher deductible to pay off

The extra deductible risk divided by the yearly premium savings. From
the *Insurance* chapter.

## Usage

``` r
break_even_years(high_deductible, low_deductible, yearly_savings)
```

## Arguments

- high_deductible:

  The higher deductible.

- low_deductible:

  The lower deductible.

- yearly_savings:

  Yearly premium savings from the higher deductible. Must be greater
  than 0.

## Value

A numeric vector of years (not rounded).

## See also

Other insurance:
[`plan_cost()`](https://mjfrigaard.github.io/perfinr/reference/plan_cost.md)

## Examples

``` r
# $1,000 vs. $500 deductible, saving $150 a year
break_even_years(high_deductible = 1000, low_deductible = 500, yearly_savings = 150)
#> [1] 3.333333
```
