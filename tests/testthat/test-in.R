test_that("in functions work", {
  expect_equal(!(1 %in% c(1,2,3)), 1 %not in% c(1,2,3))
})
