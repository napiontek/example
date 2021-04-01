test_that("complex mean works", {
  expect_equal(weighted_mean(c(weighted_mean(c(1,2)),weighted_mean(c(3,4)))), 2.5)
})
