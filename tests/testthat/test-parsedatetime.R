context("test-parsedatetime")

test_that("Stop on all NA output", {

  input <- c(NA, "10-16-2018", "10/16/18")

  expect_error(
    parseDatetime(input),
    "No datetimes could be parsed."
  )

  expect_error(
    parseDatetime(input, expectAll = TRUE),
    "No datetimes could be parsed."
  )

})

test_that("POSIXct inputs are unaltered", {

  input <- seq(ISOdate(2018, 10, 12, tz = "UTC"), by = "day", length.out = 7)

  expect_equal(parseDatetime(input, timezone = "UTC"), input)
  expect_equal(
    parseDatetime(input, timezone = "America/Los_Angeles"),
    lubridate::with_tz(input, tzone = "America/Los_Angeles")
  )

})

test_that("Fail on some NA outputs when ExpectAll is true", {

  input <- c("20181013", NA, "20181015", "181016", "10172018")

  expect_error(
    parseDatetime(input, expectAll = TRUE),
    "2 datetimes failed to parse (at indices: 4, 5).", fixed = TRUE
  )

})
