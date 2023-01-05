#' Valorant Champions Tour 2022 Champions Istanbul KDA Data
#'
#' Data from all 2022 Champions Istanbul group and playoff stage matches
#' including kills, deaths, assists, and rounds played. This data set also
#' contains Ids that tie this data frame to other data frames in the set.
#'
#'
#' @format A data frame with 860 rows and 7 columns
#' \describe{
#'    \item{seriesId}{A unique ID given to each series}
#'    \item{matchId}{A unique ID given to each match}
#'    \item{playerId}{A unique ID given to each player}
#'    \item{kills}{The number of kills the player had in a match}
#'    \item{deaths}{The number of deaths the player had in a match}
#'    \item{assists}{The number of assists the player had in a match}
#'    \item{roundsPlayed}{The number of played rounds in the match}
#' }
#' @source \url{https://www.rib.gg/}
"Champs22KDA"
