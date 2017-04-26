## === install required packages ===
pkg_list <- c("magrittr", "httr", "rvest", "XML", "stringr", "data.table",
              "jsonlite", "RSQLite", "devtools", "dplyr", "tidyr", "quantmod", "ggplot2",
              "readr", "lubridate", "extrafont", "ggrepel", "rmarkdown", "shiny", "knitr", "prettydoc", "plotly", "DT")
pkg_new <- pkg_list[!(pkg_list %in% installed.packages()[,"Package"])]
if(length(pkg_new)) install.packages(pkg_new)
if("xmlview" %in% pkg_new) {devtools::install_github("hrbrmstr/xmlview")}
if("data.table" %in% pkg_new) {
    install.packages("data.table", type = "source",
                      repos = "https://Rdatatable.github.io/data.table")
} else if (packageDescription("data.table")$Version < "1.9.7") {
    install.packages("data.table", type = "source",
                      repos = "https://Rdatatable.github.io/data.table")
}
rm(pkg_new, pkg_list)


