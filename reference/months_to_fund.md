# Months to fund a goal with a fixed monthly amount

Rounds up to whole months and ignores interest. From the *Financial
goals* chapter.

## Usage

``` r
months_to_fund(goal, monthly)
```

## Arguments

- goal:

  Target amount.

- monthly:

  Amount set aside each month. Must be greater than 0.

## Value

A numeric vector of whole months.

## See also

Other financial goals:
[`monthly_for_goal()`](https://mjfrigaard.github.io/perfinr/reference/monthly_for_goal.md)

## Examples

``` r
# one at a time: trip first, then car
months_to_fund(3000, 600)
#> [1] 5
months_to_fund(3000 + 9000, 600)
#> [1] 20
```
