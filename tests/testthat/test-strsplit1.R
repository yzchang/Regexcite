test_that("strsplit1 with default separator works", {
  expect_equal(strsplit1("alfa,bravo,charlie,delta"),
               c("alfa", "bravo", "charlie", "delta"))
})

test_that("strsplit1 with customised separator works", {
  expect_equal(strsplit1("echo:foxtrot:golf:hotel",':'),
               c("echo", "foxtrot", "golf", "hotel"))
})

test_that("strsplit1 works when the separator is not found", {
  expect_equal(strsplit1("thiswillnotbesplit"),
               c("thiswillnotbesplit"))
})

test_that("str_split_one works", {
  expect_equal(
    str_split_one(c(
      "apples and oranges and pears and bananas",
      "pineapples and mangos and guavas"),
      " and "),
    list(c(
      "apples", "pineapples", "oranges", "mangos",
      "pears", "guavas", "bananas"
    ))
  )
})
