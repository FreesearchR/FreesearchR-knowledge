## Init book
## 

# babelquarto::quarto_multilingual_book(
#   parent_dir = ".",
#   project_dir = "book",
#   main_language = "en",
#   further_languages = c("da", "sw"),
#   register_languages = TRUE,
#   site_url = "https://knowledge.freesearchr.org",
#   placement = c("sidebar", "navbar")
# )

## Rendering the multilanguage book
# pak::pak("ropensci-review-tools/babelquarto")
babelquarto::render_book(file.path(".", "book"),site_url = "https://knowledge.freesearchr.org/")


## Generating NEWS.md file
# pak::pak("autonewsmd")
library(autonewsmd)
{an <- autonewsmd$new(repo_name = "FreesearchR-knowledge")
an$generate()
an$write(force = TRUE)}



## On custom translations
## 
## See: https://quarto.org/docs/authoring/language.html#custom-translations
## And: https://docs.ropensci.org/babelquarto/articles/configuration.html
