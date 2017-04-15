# RubyKickstart

My fork of Josh Cheek's RubyKickstart, a series of exercises to kickstart your Ruby learning. 

## Challenges 

When approaching Kickstart, the biggest challenge for me was recursion, and I was unable to pass a number of the related exercises this week. If you are new to recursion, I recommend watching Eric Grimson's [excellent introduction](https://www.youtube.com/watch?v=WbWb0u8bJrU) on YouTube, provided by MIT as part of their OpenCourseWare materials. I also recommend attempting some simple [Codewars Katas](http://www.codewars.com/kata/search/ruby?q=recursion&r%5B%5D=-8&r%5B%5D=-7&r%5B%5D=-6&beta=false) on recursion—then you'll be far better placed to tackle the recursive challenges in Kickstart.

## Getting started

To attempt RubyKickstart yourself, head to Josh Cheek's [repo](https://github.com/JoshCheek/ruby-kickstart) and follow the instructions there.

To explore my own attempts, first you'll need Ruby installed. For OS X, Linux, or other UNIX-like operating systems, I recommend using RVM:

```
curl -L https://get.rvm.io | bash -s stable
rvm use ruby --install --default
```

For Windows, download and run Ruby Installer, available [here](https://rubyinstaller.org).
More detailed, OS-specific instructions are available on ruby-lang's [installation page](https://www.ruby-lang.org/en/documentation/installation/).

Once you have Ruby, you'll need to get bundler installed (`gem install bundler`). You'll also need to install the RSpec and Rake gems—to do this, navigate to the project root and run `bundle install`.

## Usage

Aside from exploring my Ruby files, the only thing for you to run is the tests. You do this using the following:
```
rake session_no:challenge_no
```
e.g. To run the rspec for challenge 4 of section 3, use `rake 3:4`.

## Further Notes

Completed during week two of the Makers Academy precourse. Click [here](http://www.makersacademy.com) for more information on the Makers Academy coding bootcamp.
