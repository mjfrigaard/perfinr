# Total yearly cost of a health plan

Premiums for the year plus medical costs (capped at the out of pocket
maximum), minus any employer HSA contribution. From the *Insurance*
chapter.

## Usage

``` r
plan_cost(monthly_premium, medical_cost, oop_max, employer_hsa = 0)
```

## Arguments

- monthly_premium:

  Monthly premium.

- medical_cost:

  Medical costs for the year. Use `Inf` for a worst case year.

- oop_max:

  Out of pocket maximum.

- employer_hsa:

  Employer HSA contribution. Defaults to 0.

## Value

A numeric vector of yearly costs.

## See also

Other insurance:
[`break_even_years()`](https://mjfrigaard.github.io/perfinr/reference/break_even_years.md)

## Examples

``` r
# Plan A vs. Plan B in a healthy year ($300 of care) and the worst year
plan_cost(100, c(300, Inf), oop_max = 3000)
#> [1] 1500 4200
plan_cost(40, c(300, Inf), oop_max = 5000, employer_hsa = 500)
#> [1]  280 4980
```
