#' Valorant Champions Tour 2022 Champions Istanbul XvY Data
#'
#' Teams situational data from all 2022 Champions Istanbul group and playoff
#' stage matches. This data set also contains Ids that tie this data frame to
#' other data frames in the set.
#'
#'
#' @format A data frame with 5600 rows and 10 columns
#' \describe{
#'    \item{matchId}{A unique ID given to each match}
#'    \item{teamId}{A unique ID given to each team}
#'    \item{teamNumber}{A number corresponding to the team's order on the match
#'    page}
#'    \item{side}{Lists the side the team was on; 2 factors: def or atk}
#'    \item{situation}{The XvY situation the team was in}
#'    \item{team1Count}{The number of players the team listed first on the
#'    match page had}
#'    \item{team2Count}{The number of players the team listed second on the
#'    match page had}
#'    \item{delta}{The difference between the numbers of players on each team}
#'    \item{wins}{The number of times the listed team won the listed situation}
#'    \item{losses}{The number of times the listed team lost the listed
#'    situation}
#' }
#' @source \url{https://www.rib.gg/}
"Champs22XvY"
