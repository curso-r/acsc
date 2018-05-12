#' Criar site
#'
#' Cria um site na apsta site com o template da curso R
#'
#' @export
criar_site <- function() {
  blogdown::new_site(
    dir = "site",
    sample = FALSE,
    theme = "curso-r/template-curso"
  )
}

#' Zipar as aulas
#'
#' Zipa as aulas e coloca na pasta static do site, assim elas podem ser servidas
#' pelo site.
#'
#' @export
zipar_aulas <- function() {
  pastas <- list.dirs("aulas", recursive = FALSE)
  purrr::walk(pastas, zipar_pasta)
}

zipar_pasta <- function(pasta) {
  arqs <- list.files(pasta, full.names = TRUE, recursive = TRUE)
  nome_pasta <- stringr::str_replace_all(pasta, "^.*/", "")
  zip::zip(paste0("site/static/", nome_pasta, ".zip"), pasta)
}
