test_that("is.not_na works", {
  expect_equal(!is.na(c(1,2,NA)), is.not_na(c(1,2,NA)))
  expect_equal(!is.na(NA), is.not_na(NA))
  expect_equal(!is.na(c(1,2,3)), is.not_na(c(1,2,3)))

})
