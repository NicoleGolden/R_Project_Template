
# load package 
library("log4r")

# Steps to create a logger: 
## Step 1. Create a logger 
logger <- logger()
## Step 2. Assign logger to .log file
logger <- "log/my_log.log"
## Step 3. Specify logger level: 
##         (1) level(logger) <- 'INFO'
##         (2) level(logger) <- 'WARN'
##         (3) level(logger) <- 'DEBUG'
##         (4) level(logger) <- 'ERROR'
##         (5) level(logger) <- 'FATAL'
logger_msg <- logger("INFO", 
                     appenders = file_appender(logger))
## Step 4. Assign messages to the logger
##         * Try logging messages with 
##           different priorities.
##         * At priority level INFO, 
##           a call to debug() won't print anything.
##         info(logger, 'An Info Message')    
##         warn(logger, 'A Warning Message')
##         error(logger, 'An Error Message')
##         debug(logger, 'A Debugging Message')
##         fatal(logger, 'A Fatal Error Message')
info(logger_msg, 
     paste("type message here"))



############################
###    Logger Example    ###
############################

#----------- 1. Create a logger
# create logger
logger <- logger()

#----------- 2. Assign logger to .log file
logger <- "log/my_log.log"

#----------- 3. Specify logger level
logger_msg <- logger("INFO", 
                 appenders = file_appender(logger))

#----------- 4. Add message to logger 
# (1) info() log
info(logger_msg, 
     paste(
     "4:33 pm April 5, 2020
     Identification: 
     Use a logit model to show that movers move at random."))

# (2) warn() log
warn(logger_msg, 
     paste(
     "7 pm April 5, 2020
     DDD: 
     This model does not work."))

# (3) error() log 
# (4) debug() log
# (5) fatal() log



