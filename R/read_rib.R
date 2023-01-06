#' Read in a scraped RiB data set
#'
#' Reads in the excel file of the scraped RiB data and outputs a list of the 10
#' sheets read in as data frames.
#'
#' I recommend running list2env(test, .GlobalEnv) after to extract the data
#' frames
#' @param xl The filepath of the excel file
#' @return A large list of 10 data frames
#' @examples
#' champsData <- read_rib("data-raw/champs.xlsx")
#' names(champsData)
#' champsData["KDA"]
#' @export
read_rib <- function(xl){
  sheets <- c("Matches", "Teams", "Rounds", "KDA", "Kills", "Economy",
              "Round Player Stats","XvY", "Events", "Assists")
  data <- list()
  for(sheet in sheets){
    sheet <- read_xlsx(xl, sheet=sheet)
    data[[length(data) + 1]] <- sheet
  }
  data <- map(data, ~ (.x %>% select(-1)))
  names(data) <- c("Matches", "Teams", "Rounds",
                   "KDA", "Kills", "Economy",
                   "RPS", "XvY", "Events",
                   "Assists")
  return(data)

}


