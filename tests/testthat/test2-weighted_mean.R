test_that("weighted mean works", {
  expect_equal(weighted_mean(c(1,4),c(2,1)), 2)
})
