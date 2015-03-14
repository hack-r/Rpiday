## File: functions.R
## Desc: Libraries and functions to accompany Rpiday.R
## Copyright: (c) 2015, Jason D. Miller, http://hack-r.com

# Set JAVA_HOME -----------------------------------------------------------
if (Sys.getenv("JAVA_HOME")!="")
  Sys.setenv(JAVA_HOME="")
library(rJava)

# Load Packages -----------------------------------------------------------
require(RCurl)
require(tm.plugin.webmining)
require(scrapeR)
require(XML)
