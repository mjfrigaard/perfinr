# Federal income tax for a single filer

Applies the 2026 federal brackets for single filers to income after the
standard deduction. From the *Taxes* chapter.

## Usage

``` r
income_tax(income, deduction = 16100)
```

## Arguments

- income:

  Gross yearly income (a single number).

- deduction:

  Deduction subtracted before the brackets apply. Defaults to the 2026
  standard deduction, 16100.

## Value

A single number: the yearly federal income tax.

## See also

Other taxes:
[`raise_kept()`](https://mjfrigaard.github.io/perfinr/reference/raise_kept.md)

## Examples

``` r
# 2026 federal income tax on a $45,000 salary
tax <- income_tax(income = 45000)
tax
#> [1] 3220

# effective rate
tax / 45000
#> [1] 0.07155556
```
