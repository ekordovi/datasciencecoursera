setwd("~/Desktop/R_files/datasciencecoursera/specdata")

complete <- function(directory, id = 1:332) {
  # read a directory full of files
  full_directory <- file.path("~/Desktop/R_files/datasciencecoursera/", directory)
  files <- list.files(path = full_directory)
  files <- files[id]
  
  file_numbers <- as.numeric(sub("\\.csv", "", files))
  
  results <- data.frame(id = character(length(files)), nobs = numeric(length(files)))
  
  nobs <- numeric()
  for (i in seq_along(files)) {
    data <- read.csv(file.path(full_directory, files[i]))
    good <- complete.cases(data)
    complete_count <- sum(good)
    results[i, "id"] <- file_numbers[i]
    results[i, "nobs"] <- complete_count
    
    
    }
  return(results)
  # report num. of observed cases in each data file
}

