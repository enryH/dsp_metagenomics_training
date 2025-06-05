install.packages(
  c(
    "FSA", "languageserver", "devtools", "BiocManager"
  ),
  dependencies = TRUE,
  repos = "https://cloud.r-project.org",
  Ncpus = parallel::detectCores()
)

# Install NetCoMi dependencies
devtools::install_github("zdk123/SpiecEasi")
devtools::install_github("GraceYoon/SPRING")

# Install NetCoMi
devtools::install_github("stefpeschel/NetCoMi",
                         repos = c("https://cloud.r-project.org/",
                                   BiocManager::repositories()))
