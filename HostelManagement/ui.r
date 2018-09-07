#UI R file 
library(shiny)
library(shinydashboard)
library(plotrix)


labelMandatory <- function(label){
  tagList(
    label,
    span("*", class= "mandatory_star")
  )
}

appCSS <- ".mandatory_star {color: red;}
            #error {color: red; }
            body { background: #544444; }"

shinyUI(
  dashboardPage( skin = "red",
    dashboardHeader(
      title = "HOSTEL DESK",
      titleWidth = 500
    ),
    dashboardSidebar(
      sidebarMenu(
        menuItem(
          text = "Dashboard",
          tabName = "dashboard",
          icon = icon("dashboard"),
          badgeLabel = "updated",
          badgeColor = "yellow"
        ),
        menuItem(
          text = "Allotment",
          tabName = "allot",
          icon = icon("registered")
        ),
      
        menuItem(
          text = "Students Database",
          
          icon = icon("database"),
          
          menuSubItem("Overview",
                      tabName = "data",
                      
                      icon = icon("table")),
          menuSubItem("Building Stats",
                      tabName = "one",
                      icon = icon("bar-chart")),
          menuSubItem("Gender Stats",
                      tabName = "two",
                      icon = icon("line-chart")),
          menuSubItem("Room Type Stats",
                      tabName = "three",
                      icon = icon("bar-chart")),
          menuSubItem("Year Stats",
                      tabName = "four",
                      icon = icon("line-chart")),
          menuSubItem("Branch Stats",
                      tabName = "five",
                      icon = icon("line-chart")),
          menuSubItem("More Stats",
                      tabName = "six",
                      icon = icon("line-chart"))
        ),
        menuItem( "Hostel Info",
        
          icon = icon("clipboard"),
          menuSubItem(
            "Overview",
            tabName = "info",
            icon = icon("line-chart")
          ),
          menuSubItem("Stats",
                      tabName = "stats",
                      icon = icon("line-chart"))
        ),
        menuItem(
          text = "Link to code files",
          href = "https://www.google.com",
          icon = icon("code")
        )
      )
    ),