test_that("get_one_file_size - gestion des erreurs", {
  expect_error(object = get_one_file_size(path = "toto"), regexp = "Path does not exist")
})

test_that("get_one_file_size - cas normal", {
  read <- get_one_file_size(system.file("squirrels_hex.png", package = "toolboxfileaxel"))

  expect_equal(object = read,
               expected = structure(
                 list(nom = "squirrels_hex.png", taille = 27619),
                 class = "data.frame",
                 row.names = c(NA, -1L)
               ))
})
