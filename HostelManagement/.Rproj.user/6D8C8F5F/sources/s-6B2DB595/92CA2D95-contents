#Server R file

library(shiny)
library(shinydashboard)

hosteldata <- read.csv("hosteldata.csv", TRUE, ",")

fieldsAll <- c("name", "fatherName", "rollno", "email", "percentage", "gender", "year", "branch", "sec", "category", "religion", "roomType", "building")
fieldsMandatory <- c("name", "fatherName", "rollno", "email", "percentage", "gender", "year", "branch", "sec", "category", "roomType", "building")
responsesDir <- file.path("responses")



epochTime <- function(){
  as.integer(Sys.time())
}

humanTime <- function() {
  format(Sys.time(), "%Y%m%d-%H%M%OS")
}

saveData <- function(data){
  fileName <- sprintf("%s_%s.csv",
                      humanTime(),
                      digest::digest(data))
  
  write.csv(x = data, file = file.path(responsesDir, fileName),
            row.names = FALSE, quote = TRUE)
}

# data starts

loadData <- function(){
  files <- list.files(file.path(responsesDir), full.names = TRUE)
  data <- lapply(files, read.csv, stringsAsFactors = FALSE)
  data <- dplyr::bind_rows(data)
  data
}

buildingdata <- function(){
  files <- list.files(file.path(responsesDir), full.names = TRUE)
  data <- lapply(files, read.csv, stringsAsFactors = FALSE)
  data <- dplyr::bind_rows(data)
  subset(data, building == "Aryabhata Bhawan")
  
}

veerbuildingdata <- function(){
  files <- list.files(file.path(responsesDir), full.names = TRUE)
  data <- lapply(files, read.csv, stringsAsFactors = FALSE)
  data <- dplyr::bind_rows(data)
  subset(data, building == "Veer Savakar Bhawan")
  
}

vivekabuildingdata <- function(){
  files <- list.files(file.path(responsesDir), full.names = TRUE)
  data <- lapply(files, read.csv, stringsAsFactors = FALSE)
  data <- dplyr::bind_rows(data)
  subset(data, building == "Vivekanand Bhawan")
  
}

sarobuildingdata <- function(){
  files <- list.files(file.path(responsesDir), full.names = TRUE)
  data <- lapply(files, read.csv, stringsAsFactors = FALSE)
  data <- dplyr::bind_rows(data)
  subset(data, building == "Sarojini Bhawan")
  
}

laxmibuildingdata <- function(){
  files <- list.files(file.path(responsesDir), full.names = TRUE)
  data <- lapply(files, read.csv, stringsAsFactors = FALSE)
  data <- dplyr::bind_rows(data)
  subset(data, building == "Laxmibai Bhawan")
  
}

maledata <- function(){
  files <- list.files(file.path(responsesDir), full.names = TRUE)
  data <- lapply(files, read.csv, stringsAsFactors = FALSE)
  data <- dplyr::bind_rows(data)
  subset(data, gender == "male")
  
}

femaledata <- function(){
  files <- list.files(file.path(responsesDir), full.names = TRUE)
  data <- lapply(files, read.csv, stringsAsFactors = FALSE)
  data <- dplyr::bind_rows(data)
  subset(data, gender == "female")
  
}