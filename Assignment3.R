
Name <- c("Jeb", "Donald", "Ted", "Marco", "Carly", "Hillary", "Bernie")

ABC_poll   <- c(  4,      62,      51,    21,      2,        14,       15)

CBS_poll   <- c( 12,      75,      43,    19,      1,        21,       19)

df_polls <- data.frame(Name, ABC_poll, CBS_poll)

mean(df_polls$ABC_poll)

mean(df_polls$CBS_poll)

median(df_polls$CBS_poll)

median(df_polls$ABC_poll)

range(df_polls[, c("ABC_poll","CBS_poll")])

df_polls$Diff <- df_polls$CBS_poll - df_polls$ABC_poll

df_polls


library(ggplot2)

Pollplot <- ggplot(df_polls, aes(x = Name)) +
  geom_col(aes(y = ABC_poll, fill = "ABC Poll"),
           position = position_nudge(x = 0.2), width = 0.4) +
  geom_col(aes(y = CBS_poll, fill = "CBS Poll"),
           position = position_nudge(x = -0.2), width = 0.4) +
  labs(
    title = "ABC vs. CBS Poll Results",
    x = "Candidate",
    y = "Poll Value",
    fill = "Poll"
  )

Pollplot
