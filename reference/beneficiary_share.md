# Share of assets with a named beneficiary

From the *Estate planning* chapter.

## Usage

``` r
beneficiary_share(with_beneficiary, without_beneficiary)
```

## Arguments

- with_beneficiary:

  Numeric vector of asset values that name a beneficiary (or pay on
  death).

- without_beneficiary:

  Numeric vector of asset values that do not.

## Value

A single number between 0 and 1.

## See also

Other estate planning:
[`net_worth()`](https://mjfrigaard.github.io/perfinr/reference/net_worth.md)

## Examples

``` r
with_beneficiary <- c(k401 = 12000, roth_ira = 6000, life_insurance = 45000, savings_pod = 8000)
without_beneficiary <- c(car = 9000)
beneficiary_share(with_beneficiary, without_beneficiary)
#> [1] 0.8875
```
