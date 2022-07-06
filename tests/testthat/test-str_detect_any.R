test_that("str_detect_any works", {
  expect_equal(
    stringr::str_detect(letters, "k"),
    str_detect_any(letters, "k")
    )
  expect_equal(
    stringr::str_detect(letters, "k", negate = TRUE),
    str_detect_any(letters, "k", negate = TRUE)
  )
  expect_equal(
    stringr::str_detect(letters, "k|p", negate = TRUE),
    str_detect_any(letters, c("k","p"), negate = TRUE)
  )
  expect_equal(
    stringr::str_detect(letters, "k|p"),
    str_detect_any(letters, c("k","p"))
  )
  expect_equal(
    stringr::str_detect(iris$Species, "ca$|^ver"),
    str_detect_any(iris$Species, c("ca$","^ver"))
  )

})
