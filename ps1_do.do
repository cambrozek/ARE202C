clear all
set more off

import delimited using "C:\Users\jawintos\Dropbox\Davis\ARE 202C\Nicaragua_RCT.csv", case(lower)

codebook

**Problem 1*
ttest complier, by(assign) unequal

foreach var of varlist income job age education capital land{
ttest `var', by(assign) unequal
}
