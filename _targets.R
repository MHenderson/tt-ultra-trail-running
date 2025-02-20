library(targets)

tar_option_set(
  packages = c("dplyr", "readr", "tibble")
)

list(
  tar_target(
       name = ultra_rankings,
    command = read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-26/ultra_rankings.csv')
  ),
  tar_target(
       name = top_nationalities,
    command = {
      top_nationalities <- ultra_rankings |>
	count(nationality) |>
	arrange(desc(n)) |>
	head(16) |>
	pull(nationality)
    }
  )
)
