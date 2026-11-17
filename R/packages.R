# Run once: Rscript R/packages.R
pkgs <- c("rmarkdown", "knitr", "formatR", "car", "lmtest", "sandwich", "MASS",
          "lme4", "lmerTest", "glmnet", "leaps", "multcomp")
missing <- setdiff(pkgs, rownames(installed.packages()))
if (length(missing)) install.packages(missing, repos = "https://cloud.r-project.org")
if (!nzchar(Sys.which("pdflatex"))) message("No LaTeX found: run tinytex::install_tinytex()")
