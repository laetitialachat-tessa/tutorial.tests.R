context("test_to_start")

##expectations can be alone (not wrapped into a test with 'test_that' function but name of this test will be ugly on Jenkins)

##expect_equal: test equality with a tolerance
test_that('expect_equal expression works proprerly', {
  expect_equal(10, 10)
  expect_equal(10, 10 + 1e-7)
  #expect_equal(10, 11) #failure
})

##expect_identical: test exact equality (without a tolerance)
##if commented, will apppear as skipped for Jenkins
test_that('expect_identical expression works proprerly', {
  #expect_identical(10, 10 + 1e-7) #failure
})

##expect_match: test regular expression and character vector
##all option (default=FALSE): one or all elements need to match
##ignore.case (default=FALSE): case-sensitive tests if FALSE
test_that('expect_match expressions works proprerly', {
  string <- "Testing is fun!"
  expect_match(string, "Testing")
  #(string, "testing") # Fails, match is case-sensitive
  expect_match(string, "testing", ignore.case = TRUE)
})

##expect_output/message/warning/error
##expect_output: inspects printed outputs
a <- list(1:10, letters)
expect_output(str(a), "List of 2")
expect_output(str(a), "int [1:10]", fixed = TRUE)

##second argument is optional (just check the type)
##expect_message:
#expect_message(library(mgcv), "This is mgcv")

##expect_warning/error:
expect_warning(log(-1))
expect_error(1 / "a")
expect_warning(log(-1), "NaNs produced")
expect_error(1 / "a", "non-numeric argument")
#expect_warning(log(0)) #failure
#expect_error(1 / 2) #failure

##expect_is: checks the inheritance from a certain class
model <- lm(mpg ~ wt, data = mtcars)
expect_is(model, "lm")
#expect_is(model, "glm")

##expect_true/false: second argument is optional
expect_true(TRUE)
expect_false(FALSE)

##expect_equal_to_reference()

##REMEMBER: testthat doesn’t cleanup after actions that affect the R landscape like
##filesystem: creating and deleting files, changing the working directory, etc.
##search path: library(), attach().
##global options, like options() and par().
