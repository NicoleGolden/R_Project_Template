


# Title:       Configure project workspace
#
# Description: Script for project configurations
#
# Details:     The script will: 
#              (1) load libraries, 
#              (2) set project paths,
#              (3) source custom functions, 
#              (4) set workspace options, 
#              (5) configure devices.
#              The script is essential for large projects, 
#              collaboration and repeatable results across
#              machines and over time.
#
# Notes:       (1) config.R needs to be sourced as start of all scripts.  
#              (2) The config file removes all data objects from memory 
#              at start of any session so that all data is controlled 
#              by source code. 



#----------- 1. Manage Memory
# clear environment data + reset memory
# (not clear function objects)
rm(list = setdiff(ls(), 
                  lsf.str()))
gc(reset = TRUE)

#----------- 2. Load Libraries
# Load essential packages
suppressMessages(library(dplyr))           
suppressMessages(library(ggplot2))    
suppressMessages(library(data.table))   
suppressMessages(library(here))
suppressMessages(library(stargazer))              

#----------- 3. Resolve function name conflicts
# combine <- dplyr::combine
# collapse <- dplyr::collapse
# extract <- tidyr::extract
# discard <- purrr::discard
# set_names <- purrr::set_names

#----------- 4. Define Project Paths 
# main.path <- file.path(getwd())
# cache.path <- file.path(getwd(), "cache/")
# config.path <- file.path(getwd(), "config/")
# data.path <- file.path(getwd(), "data/")
# doc.path <- file.path(getwd(), "doc/")
# graph.path <- file.path(getwd(), "graph/")
# lib.path <- file.path(getwd(), "lib/")
# log.path <- file.path(getwd(), "log/")
# munge.path <- file.path(getwd(), "munge/")
# report.path <- file.path(getwd(), "reports/")
# source.path <- file.path(getwd(), "src/")
# test.path <- file.path(getwd(), "test/")

#----------- 5. Source custom Functions
# see referenced file headers for details
# source("~/SampleProject_mtcars/src/function.R")

#----------- 6. Configure Project Workspace 
# # options
# options(prompt = "R> ")
# options(width = 95)
# options(digits = 5, scipen = 4)
# options(tibble.print_max = 25)
# options(tibble.print_min = 15)
# options(tibble.width = NULL)
# options(pillar.bold = TRUE)
# options(pillar.subtle = FALSE)
# options(pillar.sigfig = 4)
# options(stringsAsFactors = FALSE)
# options(papersize = "a4")
# options(repos = "https://cran.rstudio.com")
# Sys.setenv(TZ = "Asia/Qatar")
# Sys.setenv(R_HISTSIZE = '100000')

#----------- 7. Configure Graphic Devices 
# store basic plot parameters 
# (op = old.parameters)
# op <- par(no.readonly = TRUE)

# # customize plot parameters for mapping
# par(mai = c(1.02, 0.82, 0.82, 1.02), 
#     mar = c(5.1, 4.1, 4.1, 5.1))

# create custom plot themes for data analysis
# theme.Dat <- theme(
#   plot.title = element_text(size = 15, 
#                             color = "black", 
#                             face = "bold", 
#                             hjust = 0),
#   plot.subtitle = element_text(size = 11, 
#                                hjust = 0),
#   plot.caption = element_text(size = 9, 
#                               hjust = 0, 
#                               vjust = 0, 
#                               colour = "grey50"),
#   axis.title.y = element_text(face = "bold", 
#                               color = "gray30"),
#   axis.title.x = element_text(face = "bold", 
#                               color = "gray30", 
#                               vjust = -0.25),
#   axis.text.x = element_text(size = 9, 
#                              color = "grey15", 
#                              angle = -90, 
#                              vjust = 0.5),
#   panel.background = element_rect(fill = "grey95", 
#                                   colour = "grey75"),
#   panel.border = element_rect(colour = "grey75"),
#   panel.grid.major.y = element_line(colour = "white"),
#   panel.grid.minor.y = element_line(colour = "white"),
#   panel.grid.major.x = element_line(colour = "white"),
#   panel.grid.minor.x = element_line(colour = "white"),
#   strip.background = element_rect(fill = "white", 
#                                   colour = "grey75"),
#   strip.text.y = element_text(face = "bold"),
#   axis.line = element_line(colour = "grey75"))


