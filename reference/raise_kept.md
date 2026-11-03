# Part of a raise kept after federal income tax

The raise minus the extra tax it causes, using
[`income_tax()`](https://mjfrigaard.github.io/perfinr/reference/income_tax.md).
From the *Taxes* chapter.

## Usage

``` r
raise_kept(old_income, raise)
```

## Arguments

- old_income:

  Yearly income before the raise (a single number).

- raise:

  Yearly raise amount (a single number).

## Value

A single number: the raise after federal income tax.

## See also

Other taxes:
[`income_tax()`](https://mjfrigaard.github.io/perfinr/reference/income_tax.md)

## Examples

``` r
# $2,000 raise on a $66,000 salary
raise_kept(old_income = 66000, raise = 2000)
#> [1] 1610
```
