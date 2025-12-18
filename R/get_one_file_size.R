#' Obtenir la taille d'un fichier
#'
#' @param path Chemin vers le fichier
#' @returns df Un dataframe contenant le nom et la taille du fichier
#' @export
#'
#' @examples
#' get_one_file_size(system.file("squirrels_hex.png",package = "toolboxfileaxel"))
#'
get_one_file_size <- function(path) {

  if (isFALSE(file.exists(path))) {
    stop("Path does not exist")
  }

  nom <- basename(path)
  taille <- file.size(path)

  df <- data.frame(nom = nom, taille = taille)
  return(df)
}
