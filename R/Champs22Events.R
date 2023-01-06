#' Valorant Champions Tour 2022 Champions Istanbul Events Data
#'
#' All events from all 2022 Champions Istanbul group and playoff stage rounds.
#' This data set also contains Ids that tie this data frame to other data
#' frames in the set.
#'
#'
#' @format A data frame with 16504 rows and 19 columns
#' \describe{
#'    \item{roundId}{A unique ID given to each round}
#'    \item{roundNumber}{The in game round number}
#'    \item{roundTimeMillis}{The time in the round the event occurred in
#'    milliseconds}
#'    \item{killId}{A unique ID given to each kill}
#'    \item{tradedByKillId}{Lists the unique kill ID of the kill that traded
#'    out the current one, if traded}
#'    \item{tradedForKillId}{Lists the unique kill ID of the kill that the
#'    current one traded out, if a trade kill}
#'    \item{bombId}{A unique ID given to each spike to track plants and defuses}
#'    \item{resId}{A unique ID given to a Sage resurrection}
#'    \item{playerId}{A unique ID given to each player}
#'    \item{assists}{A character string of a vector of assistId,
#'    assistantId, and damage}
#'    \item{referencePlayerId}{Lists the unique player ID of the player the
#'    event is referencing}
#'    \item{eventType}{Lists the type of event; 5 factors: start, kill, plant,
#'    defuse, revival}
#'    \item{damageType}{Lists the type of damage for kills; 2 factors: weapon or
#'    ability}
#'    \item{weapon}{Lists the weapon or ability that dealt the kill}
#'    \item{impact}{the amount that the event contributed to the round's win
#'    probabilty}
#'    \item{attackingWinProbabilityBefore}{the win probability of the attacking
#'    team before the event}
#'    \item{attackingWinProbabilityAfter}{the win probability of the attacking
#'    team after the event}
#'    \item{attackingTeamId}{Lists the unique team ID for the attacking team}
#'    \item{matchId}{A unique ID given to each match}
#' }
#' @source \url{https://www.rib.gg/}
"Champs22Events"
