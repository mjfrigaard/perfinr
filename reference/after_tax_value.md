# After tax value of a retirement contribution

Taxes the contribution once at `tax_rate` (today for a Roth, in
retirement for a traditional account) and grows it at `rate`. From the
*Retirement accounts* chapter.

## Usage

``` r
after_tax_value(contribution, tax_rate, rate, years)
```

## Arguments

- contribution:

  Amount contributed.

- tax_rate:

  Tax rate applied, as a decimal.

- rate:

  Yearly return, as a decimal.

- years:

  Number of years.

## Value

A numeric vector of after tax values.

## See also

Other retirement accounts:
[`employer_match()`](https://mjfrigaard.github.io/perfinr/reference/employer_match.md)

## Examples

``` r
# Roth: taxed at today's 12% rate
after_tax_value(contribution = 1000, tax_rate = 0.12, rate = 0.07, years = 40)
#> [1] 13177.52

# Traditional: taxed at a 22% rate in retirement
after_tax_value(contribution = 1000, tax_rate = 0.22, rate = 0.07, years = 40)
#> [1] 11680.08
```
