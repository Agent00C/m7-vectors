# Exercise 3: Vector and function practice

# Create a vector `marbles` with 6 different colors in it (representing marbles)
marbles <- c("engineering red", "science blue", "command yellow", "rave green", "olympic white", "super cyan" )

# Use the `sample` function to select a single marble
special.marble <- sample(marbles, 1)

# Write a function MarbleGame that does the following:
# - Takes in a `guess` of a marble color
# - Randomly samples a marble
# - Returns whether or not the person guessed accurately (preferrably a full phrase)
MarbleGame <- function(guess) {
  lower.guess <- tolower(guess)
  if(lower.guess == special.marble) {
    return("Correct!")
  } else {
    return("Incorrect. Try again!")
  }
}

# Play the marble game!
MarbleGame("Olympic White")

# Bonus: Play the marble game until you win, keeping track of how many tries you take
have.not.won <- TRUE
tries <- 0
while(have.not.won) {
  tries <- tries + 1
  result <- MarbleGame("Olympic White")
  if(result == "Correct!") have.not.won <- FALSE
}
print(tries)

## Double bonus(answer not provided): play the game 1000X (until you win) and track the average number of tries
# Is it what you expected based on the probability