## File: Rpiday.R
## Desc: Just a little Pi Day fun
## Copyright: (c) 2015, Jason D. Miller, http://hack-r.com

# Load Libraries ----------------------------------------------------------
source("functions.R")

# Source Pi ---------------------------------------------------------------
source(pi.R)

# Greet the user, print some stuff about Pi -------------------------------
cat("
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
    Greetings!
    Today is March 14, 2015 -- Pi Day!
    Pi (π) is the ratio of a circle’s circumference to its diameter. 
    Pi is a constant, irrational, transcendental number, which makes it really cool.
    ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~")

# Print Pi ----------------------------------------------------------------
paste("In short, the number Pi is equal to ", sprintf("%.15f", pi), 
      " but that's only the first few digits.")


# Scrape Data from Joy of Pi ----------------------------------------------
cat("If we want more digits, we're going to have to steal them...
     Let's try scraping some HTML from PiDay.org!")

# Pastebin paste a la piday.org/million
bigPi <- as.data.frame(getURLContent(url="http://pastebin.com/raw.php?i=SLb6RBeL"))

# Print More Pi -----------------------------------------------------------
paste("Pi wth a few more digits is ", bigPi[1,1])

# Visualize ---------------------------------------------------------------
cat("\n \n Finally, I've adapted a Julia set (fractal) algorithm to be based on the value of Pi.
            Let's have a look:")

# Visualize a Julia set based on Pi ---------------------------------------
source("fractal.R")



