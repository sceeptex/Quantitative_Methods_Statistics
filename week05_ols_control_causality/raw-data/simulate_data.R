
# Confounder been to Trump Rally -> Like/Dislike Trump
# confounder: ideology
set.seed(1234)
ideology <- round(runif(n, -10.5, 10.5))

trump_rally_lat <- rnorm(n,
                         -3 + 0.5*ideology,
                         0.5)
plot(density(trump_rally_lat))
abline(v = 0)
trump_rally <- ifelse(trump_rally_lat > 0, 1, 0)

like_trump <- rnorm(n, 0 + 0.1*trump_rally + 0.5*ideology, 2)

plot(ideology, like_trump)

lm_no_control <- lm(like_trump ~ trump_rally)
lm_control <- lm(like_trump ~ trump_rally + ideology)
summary(lm_no_control)
summary(lm_control)

trump_rally <- data.frame("ideology" = ideology,
                          "attendance" = trump_rally,
                          "like_trump" = like_trump)
save(trump_rally, file = "raw-data/trump_rally.Rdata")

# Mediator: 
# Treatment: civic education program
# Mediator: political interest (measured after program)
# DV: likeliness to turn out (on a scale)
set.seed(1234)
educ_program <- rbinom(n, 1, 0.5)
ses <- round(runif(n, 0.5, 5.5))
pol_int <- round(rnorm(n,
                       2.5 + 1.5*educ_program + 0*ses + 1*educ_program*ses,
                       0.8))
pol_int <- ifelse(pol_int > 10, 10, pol_int)
pol_int <- ifelse(pol_int < 0, 0, pol_int)
hist(pol_int)

turnout <- rnorm(n,
                 1.5 + 1*educ_program + 0.5*pol_int + 0.5*ses,
                 0.5)
turnout <- ifelse(turnout > 10, 10, turnout)
turnout <- ifelse(turnout < 0, 0, turnout)
hist(turnout)

lm_bin <- lm(turnout ~ educ_program)
lm_mediator_control <- lm(turnout ~ educ_program + pol_int)
summary(lm_bin)
summary(lm_mediator_control)


experiment <- data.frame("educ_program" = educ_program,
                         "turnout" = turnout,
                         "pol_interest" = pol_int)
save(experiment, file = "raw-data/experiment.Rdata")

## Collider: education -> vote <- like_pop_right

set.seed(271020)
n <- 1000
education <- round(runif(n, 0.5, 7.5))
hist(education, breaks = seq(0.5, 7.5, 1))

like_pop_right <- rnorm(n,
                        0 + 0*education, 2.5)

plot(jitter(education),
     like_pop_right)

vote_lat <- -25 + 4*education + 4*like_pop_right + rnorm(n, 0, 0.5)

plot(density(vote_lat))
abline(v = 0)

vote_pop_right <- ifelse(vote_lat > 0, 1, 0)
table(vote_pop_right)

lm_correct <- lm(like_pop_right ~ education)
lm_collider_control <- lm(like_pop_right ~ education + vote_pop_right)
summary(lm_correct)
summary(lm_collider_control)

populism <- data.frame("like_pop_right" = like_pop_right,
                       "educ" = education,
                       "vote_pop_right" = vote_pop_right)
save(populism, file = "raw-data/populism.Rdata")



