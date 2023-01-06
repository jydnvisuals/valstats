#' Link Team and Player IDs with Names
#'
#' Separates and cleans the TeamId and PlayerIgn character lists to connect them
#' to their unique ID. Outputs a data frame with the player's IGN and unique ID
#' and their respective team and unique team ID.
#'
#' @param teamsdf The teams data frame
#' @return A data frame with 4 columns
#' @examples
#' champsNames <- id_to_name(Champs22Teams)
#' head(champsNames)
#' @export
# Does its job, but will clean this up at a later date
id_to_name <- function(teamsdf){
  # Requires
  ign_cleaning <- function(igndf){
    igndf$P1 <- sub("^\\D{2}", "", igndf$P1)
    igndf$P1 <- sub(".{1}$", "", igndf$P1)
    igndf$P2 <- sub(".{1}$", "", igndf$P2)
    igndf$P3 <- sub(".{1}$", "", igndf$P3)
    igndf$P4 <- sub(".{1}$", "", igndf$P4)
    igndf$P5 <- sub(".{2}$", "", igndf$P5)
    return(igndf)
  }

  id_cleaning <- function(iddf){
    iddf$I1 <- sub("^\\D", "", iddf$I1)
    iddf$I5 <- sub("\\D$", "", iddf$I5)
    return(iddf)
  }

  # Main

  # IGN Cleaning
  one_igns <- separate(teamsdf, teamOnePlayerIgn,
                       c("P1", "P2", "P3", "P4", "P5"), sep=", '") %>%
    ign_cleaning() %>%
    select(teamOneName, teamOneId, P1, P2, P3, P4, P5)
  one_igns <- data.frame(one_igns[1:2], stack(one_igns[3:7])) %>%
    rename(teamName = teamOneName, teamId = teamOneId, playerIgn = values)
  one_igns$ind <- NULL

  two_igns <- separate(teamsdf, teamTwoPlayerIgn,
                       c("P1", "P2", "P3", "P4", "P5"), sep=", '" ) %>%
    ign_cleaning() %>%
    select(teamTwoName, teamTwoId, P1, P2, P3, P4, P5)
  two_igns <- data.frame(two_igns[1:2], stack(two_igns[3:7])) %>%
    rename(teamName = teamTwoName, teamId = teamTwoId, playerIgn = values)
  two_igns$ind <- NULL

  # ID Cleaning
  one_ids <- separate(teamsdf, teamOnePlayerId,
                      c("I1", "I2", "I3", "I4", "I5"), sep=", ") %>%
    id_cleaning() %>%
    select(teamOneName, teamOneId, I1, I2, I3, I4, I5)
  one_ids <- stack(one_ids[3:7]) %>%
    rename(playerId = values)
  one_ids$ind <- NULL

  two_ids <- separate(teamsdf, teamTwoPlayerId,
                      c("I1", "I2", "I3", "I4", "I5"), sep=", ") %>%
    id_cleaning() %>%
    select(teamTwoName, teamTwoId, I1, I2, I3, I4, I5)
  two_ids <- stack(two_ids[3:7]) %>%
    rename(playerId = values)
  two_ids$ind <- NULL

  # Merging
  one_igns_ids <- cbind(one_igns, one_ids)
  two_igns_ids <- cbind(two_igns, two_ids)

  igns_ids <- distinct(rbind(one_igns_ids, two_igns_ids)) %>% arrange(teamName)
  return(igns_ids)
}
