#' Valorant Champions Tour 2022 Champions Istanbul Assists Data
#'
#' Assists data from all 2022 Champions Istanbul group and playoff
#' stage rounds. This data set also contains Ids that tie this data frame to
#' other data frames in the set.
#'
#'
#' @format A data frame with 5156 rows and 7 columns
#' \describe{
#'    \item{roundId}{A unique ID given to each round}
#'    \item{roundNumber}{The in game round number}
#'    \item{assistId}{A unique ID given to each assist}
#'    \item{forKillId}{Lists the unique kill ID the assist was for}
#'    \item{assistantPlayerId}{Lists the unique player ID of the player who was
#'    credited the assist}
#'    \item{assistedPlayerId}{Lists the unique player ID of the player who got
#'    the kill that was assisted}
#'    \item{damage}{The damage dealt by the assistant}
#' }
#' @source \url{https://www.rib.gg/}
"Champs22Assists"
