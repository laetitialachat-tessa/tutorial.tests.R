context("test_cat_function")

test_that("cat_function works properly with boolean inputs", {
  expect_output(cat_function(FALSE),"I love cats!")
  expect_output(cat_function(FALSE),"I am not a cool person.")
})

test_that("cat_function works properly with non-boolean inputs", {
  expect_output(cat_function("string input"),"I am not a cool person.")
  expect_output(cat_function(0),"I am not a cool person.")
  expect_output(cat_function(2),"I am not a cool person.")
  expect_output(cat_function(1),"I love cats!")
  expect_output(cat_function(),"I love cats!")
})
