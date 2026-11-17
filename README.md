# SDS 4030 Final Project (Fall 2026)

Regression analysis of `city.mpg` in the car data set. Due Wednesday, December 16 at 11:59 PM.

## Team-specific settings

| Part | Setting |
|------|---------|
| 1  | $H_0: 11\beta_{length} - 100\beta_{curb.weight} + 20\beta_{engine.size} = 5\beta_{compression.ratio} + 20\beta_{horsepower} = 1$ |
| 4  | IRLS variance weights as a function of `length` |
| 8  | Interactions between `drive.wheels` and all quantitative covariates |
| 12 | All pairwise comparisons across `make` |

## Layout

- `report.Rmd`: YAML, setup, data loading, bibliography; includes each part as a child document
- `parts/partNN.Rmd`: one file per required question (they run in order and share one R session, so objects from earlier parts are available later)
- `data/car.txt`: the data set
- `references.bib`: bibliography (every consulted source goes here)
- `R/packages.R`: installs required packages

## Usage

```bash
Rscript R/packages.R
Rscript -e 'rmarkdown::render("report.Rmd")'
```

Or open `SDS_4030_Fall2026.Rproj` in RStudio and knit `report.Rmd`.

Pull before you start working and edit only the part files you own to avoid merge conflicts.
