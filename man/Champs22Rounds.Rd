% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Champs22Rounds.R
\docType{data}
\name{Champs22Rounds}
\alias{Champs22Rounds}
\title{Valorant Champions Tour 2022 Champions Istanbul Rounds Data}
\format{
A data frame with 1880 rows and 23 columns
\describe{
   \item{roundId}{A unique ID given to each round}
   \item{matchId}{A unique ID given to each match}
   \item{roundNumber}{The in game round number}
   \item{winCondition}{Reason why the round was won, 3 factors: kills, bomb,
   defuse}
   \item{winningTeamId}{Lists the unique ID of the team that won the match}
   \item{Team1LoadoutTier}{Ordinal (asc) variable to describe credits spent
   by the first team listed on the match page during a round. Missing values
   are pistol rounds. 1 - 0-5k (eco); 2 - 5-10k (semi-eco); 3- 10-20k
   (half-buy); 4 20k+ (full buy)}
   \item{Team2LoadoutTier}{Ordinal (asc) variable to describe credits spent
   by the second team listed on the match page during a round. Missing values
   are pistol rounds. 1 - 0-5k (eco); 2 - 5-10k (semi-eco); 3- 10-20k
   (half-buy); 4 20k+ (full buy)}
   \item{attackingTeamId}{Lists the unique ID of the team that was on the
   attack side}
   \item{seriesId}{A unique ID given to each series}
   \item{teamOneId}{Lists the unique team ID for the team listed as the
   first team on the match page}
   \item{teamTwoId}{Lists the unique team ID for the team listed as the
   second team on the match page}
   \item{map}{Name of the map the match was played on}
   \item{half}{Which half of the game the round occured on}
   \item{spikePlant}{Whether or not the spike was planted in a round,
   boolean}
   \item{spikePlantRoundTimeMillis}{The time in the round the spike was
   planted in milliseconds}
   \item{defuse}{Whether or not the spike was defused in a round, boolean}
   \item{defuseLeftTimeMillis}{Time left in the round after the defuse in
   milliseconds}
   \item{roundDurationMillis}{How long the round lasted in milliseconds}
   \item{spikeX}{X Coordinate of the spike plant}
   \item{spikeY}{Y Coordinate of the spike plant}
   \item{sitePlant}{Which site the spike was planted on}
   \item{atkPostPlant}{The number of attackers alive at the time of the
   spike plant}
   \item{defPostPlant}{The number of defenders alive at the time of the
   spike plant}
}
}
\source{
\url{https://www.rib.gg/}
}
\usage{
Champs22Rounds
}
\description{
Data from all 2022 Champions Istanbul group and playoff stage rounds
including win conditions, loadouts, spike plants, and post plant numbers.
This data set also contains Ids that tie this data frame to other data
frames in the set.
}
\keyword{datasets}
