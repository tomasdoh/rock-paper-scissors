# Rock, Paper, Scissors [![Build Status](https://travis-ci.org/tomasdoh/rock-paper-scissors.svg?branch=master)](https://travis-ci.org/tomasdoh/rock-paper-scissors)

Play *Rock, Paper, Scissors* against your computer. A simple web application built with Sinatra and tested with RSpec and Capybara. Built over a weekend as part of Makers Academy.

## Screenshots

![Welcome page](/public/screenshots/welcome.png)
![Weapon selection](/public/screenshots/play.png)
![Result](/public/screenshots/result.png)

## User stories
```
As a user
So that I can see my name in lights
I would like to register my name before playing an online game

As a user
So that I can enjoy myself away from the daily grind
I would like to be able to play rock/paper/scissors
```

## My approach

I decided to implement the game using a 'player vs computer' mode. I divided responsibilities across three classes in the model - `Computer`, `Game` and `Player`.

The player's choice of weapon is passed as a parameter to the model, where it's then stored to calculate the game result against the computer's randomly selected weapon. Game logic is restricted almost entirely to the model - the controller handles params and the storing of a current game inside the `Game` class.

## Getting started

To play _Rock, Paper, Scissors_, begin by cloning this repo.

Then to install the correct gems and run a local server, type the following commands into your terminal:
```
cd rock-paper-scissors
bundle install
ruby app.rb
```
You will then be able to play the game on `http://localhost:4567`.

## Testing

The application has been fully tested using RSpec and Capybara, and has 100% coverage.

To run the tests:
```
cd rock-paper-scissors
bundle install
rspec
```
