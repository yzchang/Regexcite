test_that("split with default separator works", {
  expect_equal(strsplit1("alfa,bravo,charlie,delta"),
               c("alfa","bravo","charlie","delta"))
})

test_that("split with customised separator works", {
  expect_equal(strsplit1("echo:foxtrot:golf:hotel",':'),
               c("echo","foxtrot","golf","hotel"))
})

test_that("split works when the separator is not found", {
  expect_equal(strsplit1("thiswillnotbesplit"),
               c("thiswillnotbesplit"))
})
