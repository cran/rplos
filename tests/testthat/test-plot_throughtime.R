context("plot_throughtime")

skip_on_cran()
skip_if_offline()

test_that("plot_throughtime returns the correct class", {
  vcr::use_cassette("plot_throughtime", {
  	a <- plot_throughtime('phylogeny', 300)
  	b <- plot_throughtime(list('drosophila','monkey'), 100)
  	c <- plot_throughtime(list('drosophila','flower'), 100)

    expect_is(a, "ggplot")
    expect_is(b, "ggplot")
    expect_is(c, "ggplot")
    expect_is(a$data, "data.frame")
  })
})
