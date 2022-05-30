games_won_this_day <- function(day_name) {
  outcomes_days %>%
    filter(Day == day_name) %>%
    select(Wins) %>%
    as.integer()
}

total_games_this_day <- function(day_name) {
  days_and_games_count %>%
    filter(Day==day_name) %>%
    pull(Games)
}

chance_of_winning_and_being_n_day<- function(day_name) {
  chance <- round((games_won_this_day(day_name))/nrow(result)*100, 2)
  return(chance)
}

chance_of_winning_on_n_day <- function(day_name) {
chance <- round((games_won_this_day(day_name))/total_games_this_day(day_name)*100, 2)
return(chance)
}
