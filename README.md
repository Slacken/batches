# Batches

A simple wrapper of multithreading in Ruby

## Installation

Add this line to your application's Gemfile:

    gem 'batches'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install batches

## Usage

Handling the entity array in 20 threads

    require 'batches'
    Batches.do(20, entities) do |entity|
      do_some_thing_with(entity)
    end

## Contributing

1. Fork it ( https://github.com/Slacken/batches/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
