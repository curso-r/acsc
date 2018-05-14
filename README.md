# acsc

> Automatic Course Site Creator

## Instalação

``` r
devtools::install_github("curso-r/ascs")
```

## Workflow

O repositório do curso deve ser organizado em da seguinte forma: 

```
aulas/
  intro/
  manip/
  visualizacao/
  case/
site/
  ...
```

* `aulas` é um diretórios cujos subdiretórios contém o material didático usado durante a aula. O `ascs` cuidará de criar um link para download desses arquivos e incluir no site do curso.

* `site` é uma pasta com o site em blogdown. use a função `criar_site` para criá-la de forma rápida.

Modifique o conteudo das aulas e etc na pasta content e no arquivo config.toml dentro do site.

Use a função `zipar_aulas` para automaticamente ziapar as pastas das aulas e colocá-las na pasta `static` do site para serem servidas pelo site.

## Exemplo

Um exemplo completo funcionando aqui:

* [Github](https://github.com/curso-r/201805-introducao-a-programacao-em-r/tree/site)
* [Site Live](https://sleepy-murdock-571b20.netlify.com)
