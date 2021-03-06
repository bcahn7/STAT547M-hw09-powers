context("Squaring non-numerics")

test_that("At least numeric values work.", {
  num_vec <- c(0, -4.6, 3.4)
  expect_identical(square(num_vec), num_vec^2)
})

test_that("Logicals automatically convert to numeric.", {
  logic_vec <- c(TRUE, TRUE, FALSE)
  expect_identical(square(logic_vec), logic_vec^2)
})

test_that("At least numeric values work.", {
  chr_vec <- c("how", "are", "you")
  expect_error(square(chr_vec))
  chr_vec2 <- c("-1", "0", "5")
  expect_error(square(chr_vec2))
})
