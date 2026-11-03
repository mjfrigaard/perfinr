# Yearly employer retirement match

The employer matches `match_rate` of contributions up to
`match_limit_pct` of salary. From the *Retirement accounts* chapter.

## Usage

``` r
employer_match(salary, contribution_pct, match_limit_pct, match_rate)
```

## Arguments

- salary:

  Yearly salary.

- contribution_pct:

  Share of salary you contribute, as a decimal.

- match_limit_pct:

  Share of salary the employer will match, as a decimal.

- match_rate:

  Employer match per dollar contributed, as a decimal (`0.5` is 50 cents
  per dollar).

## Value

A numeric vector of yearly match amounts.

## See also

Other retirement accounts:
[`after_tax_value()`](https://mjfrigaard.github.io/perfinr/reference/after_tax_value.md)

## Examples

``` r
# $45,000 salary, 6% contribution, 50% match on the first 6%
employer_match(salary = 45000, contribution_pct = 0.06,
               match_limit_pct = 0.06, match_rate = 0.50)
#> [1] 1350

# same job, but only contributing 3%
employer_match(salary = 45000, contribution_pct = 0.03,
               match_limit_pct = 0.06, match_rate = 0.50)
#> [1] 675
```
