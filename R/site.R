#' Criar site
#'
#' Cria um site na apsta site com o template da curso R
#'
#' @export
criar_site <- function() {
  blogdown::new_site(
    dir = "site",
    sample = FALSE,
    template = "curso-r/template-curso"
  )
}
