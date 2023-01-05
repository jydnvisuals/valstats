#' Valorant Champions Tour 2022 Champions Istanbul Kills Data
#'
#' Data from all 2022 Champions Istanbul group and playoff stage matches
#' including kill information such as whether a kill was traded or a trade kill,
#' weapon type, agent, and first kill data. This data set also contains Ids that
#' tie this data frame to other data frames in the set.
#'
#'
#' @format A data frame with 12823 rows and 26 columns
#' \describe{
#'    \item{matchId}{A unique ID given to each match}
#'    \item{killId}{A unique ID given to each kill}
#'    \item{roundId}{A unique ID given to each round}
#'    \item{killerId}{Lists the unique player ID of the player that got the
#'    kill}
#'    \item{victimId}{Lists the unique player ID of the player that got killed}
#'    \item{roundTimeMillis}{The time in the round of the kill in milliseconds}
#'    \item{gameTimeMillis}{The time in the match of the kill in milliseconds}
#'    \item{damageType}{The type of damage the victim was killed by; 2 factors:
#'    weapon or ability}
#'    \item{first}{Whether the kill was the first kill of the round, boolean}
#'    \item{tradedByKillId}{Lists the unique kill ID of the kill that traded
#'    out the current one, if traded}
#'    \item{tradedForKillId}{Lists the unique kill ID of the kill that the
#'    current one traded out, if a trade kill}
#'    \item{weapon}{The weapon that killed the victim}
#'    \item{killerTeamId}{Lists the unique ID of the team the killer was on}
#'    \item{victimTeamId}{Lists the unique ID of the team the victim was on}
#'    \item{killerSide}{Lists the side the killer was on; 2 factors: def or atk}
#'    \item{assistants}{A character string of unique player IDs that assisted
#'    the kill, if applicable}
#'    \item{seriesId}{A unique ID given to each series}
#'    \item{roundWinnerTeamId}{Lists the unique ID of the team that won the
#'    round}
#'    \item{roundNumber}{Lists the in game round number of the match the kill
#'    occurred in}
#'    \item{agent}{Lists the agent of the killer}
#'    \item{victimTradedByKillerId}{Lists the unique ID of the player that
#'    traded the current kill, if traded}
#'    \item{tradeKillForVictimId}{Lists the unique ID of the player that
#'    was traded by the current kill, if a trade kill}
#'    \item{killerX}{The X Coordinate of the killer}
#'    \item{killerY}{The Y Coordinate of the killer}
#'    \item{victimX}{The X Coordinate of the victim}
#'    \item{victimY}{The Y Coordinate of the victim}
#' }
#' @source \url{https://www.rib.gg/}
"Champs22Kills"
