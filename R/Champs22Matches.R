#' Valorant Champions Tour 2022 Champions Istanbul Match Data
#'
#' Data from all 2022 Champions Istanbul group and playoff stage matches
#' including team scores, winning team, and losing team. This data set also
#' contains Ids that tie this data frame to other data frames in the set.
#'
#'
#' @format A data frame with 86 rows and 13 columns
#' \describe{
#'    \item{eventName}{Name of the event and the event stage the matches were
#'    scraped from}
#'    \item{eventId}{A unique ID given to each event}
#'    \item{seriesId}{A unique ID given to each series}
#'    \item{matchId}{A unique ID given to each match}
#'    \item{map}{Name of the map the match was played on}
#'    \item{teamOneId}{Lists the unique team ID for the team listed as the
#'    first team on the match page}
#'    \item{teamOneName}{Name of the team listed as the first team on the match
#'    page}
#'    \item{teamTwoId}{Lists the unique team ID for the team listed as the
#'    second team on the match page}
#'    \item{teamTwoName}{Name of the team listed as the second team on the match
#'    page}
#'    \item{atkFirstTeamId}{Lists the unique ID for the team listed as the
#'    attacking team}
#'    \item{teamOneScore}{Lists the numbers of rounds the first team won}
#'    \item{teamTwoScore}{Lists the numbers of rounds the second team won}
#'    \item{winningTeamId}{Lists the unique ID of the team that won the match}
#' }
#' @source \url{https://www.rib.gg/}
"Champs22Matches"
