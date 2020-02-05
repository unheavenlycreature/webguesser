# WebGuesser

This repo contains a simple number guessing game that can be played in the browser. It's implemented using [Sinatra](http://sinatrarb.com), based off the tutorial from [JumpstartLab](http://tutorials.jumpstartlab.com/projects/web_guesser.html) as an introductory assignment from [The Odin Project](https://www.theodinproject.com/courses/ruby-on-rails/lessons/sinatra-basics?ref=lnav).

# Running locally

To play the game locally, first clone this repo. You'll need to have Ruby and Sinatra installed.

You can verify you have ruby installed by running the following in your terminal.

`$ ruby -v`

If that does not produce a Ruby version number as output, follow the directions [here](https://www.ruby-lang.org/en/documentation/installation/) to install Ruby.

To install Sinatra (and the Sinatra reloader), run the following commands in your terminal.

`$ gem install sinatra`

`$ gem install sinatra-contrib`

From the cloned repo, run the following:

`$ ruby web_guesser.rb`

The game should be accessible at `localhost:4567`.