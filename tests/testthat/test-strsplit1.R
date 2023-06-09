test_that("str_split_one with default separator works", {
  expect_equal(str_split_one("alfa,bravo,charlie,delta"),
               c("alfa", "bravo", "charlie", "delta"))
})

test_that("str_split_one with customised separator works", {
  expect_equal(str_split_one("echo:foxtrot:golf:hotel",':'),
               c("echo", "foxtrot", "golf", "hotel"))
})

test_that("str_split_one works when the separator is not found", {
  expect_equal(str_split_one("thiswillnotbesplit"),
               c("thiswillnotbesplit"))
})

test_that("str_split_multi works", {
  expect_equal(
    str_split_multi(c(
      "apples and oranges and pears and bananas",
      "pineapples and mangos and guavas"),
      " and "),
    list(c(
      "apples", "pineapples", "oranges", "mangos",
      "pears", "guavas", "bananas"
    ))
  )
})
