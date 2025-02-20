library(targets)

tar_option_set(
  packages = c("readr", "tibble")
)

list(
  tar_target(
       name = ultra_rankings,
    command = read_csv('https://raw.githubusercontent.com/rfordatascience/tidytuesday/master/data/2021/2021-10-26/ultra_rankings.csv')
  )
)
