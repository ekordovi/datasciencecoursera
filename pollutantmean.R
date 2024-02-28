setwd("~/Desktop/R_files/datasciencecoursera/specdata")

# trying to calc mean from a bunch of pollution sensors 
pollutantmean <- function(directory, pollutant, id = 332) {
# obtain list of sensor files in specdata directory
  full_directory <- file.path("~/Desktop/R_files/datasciencecoursera/", directory)
  files <- list.files(path = full_directory)
# create empty data frame
  dr <- data.frame()
  # subset list of sensor files
  files <- files[id] 
  files
  # loop through files in subset list and
  #    * read the csv file
  ##    * bind to collector data frame
  pollutant_values <- numeric()
  for (file in files) {
    print(file)
    data <- read.csv(file)
    pollutant_values <- c(pollutant_values, data[[pollutant]])
  }
  # calculate mean and return to parent environment
  mean_pollutant <- mean(pollutant_values, na.rm = TRUE)
  return(mean_pollutant)
}


