# Expense as a percent of income

From the *Budgeting* chapter.

## Usage

``` r
percent_of_income(expense, income)
```

## Arguments

- expense:

  Expense amount.

- income:

  Income for the same period as `expense`. Must be greater than 0.

## Value

A numeric vector of percentages (`30` is 30%).

## See also

Other budgeting:
[`months_to_break_even()`](https://mjfrigaard.github.io/perfinr/reference/months_to_break_even.md),
[`opportunity_cost()`](https://mjfrigaard.github.io/perfinr/reference/opportunity_cost.md),
[`to_annual()`](https://mjfrigaard.github.io/perfinr/reference/to_annual.md),
[`to_monthly()`](https://mjfrigaard.github.io/perfinr/reference/to_monthly.md)

## Examples

``` r
percent_of_income(expense = 1500, income = 5000)
#> [1] 30
```
