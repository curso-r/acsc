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
