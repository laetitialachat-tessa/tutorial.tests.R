library(testthat)
library(tutorial.tests.R)

test_check("tutorial.tests.R", reporter=JunitReporter)
