# Esha

Esha is a simple wrapper that makes the ESHA nutrition api a little easier to work with.

## Installation

Add this line to your application's Gemfile:

    gem 'esha'

And then run:

    $ bundle

Or install it yourself:

    $ gem install esha

## Usage

```ruby
Esha::Api.key = '....' # Get an api key from http://developer.esha.com/

pizza = Esha::Food.search('pizza').first
pizza.description # => 'Pizza, hand tossed, cheese, 12"'
pizza.product # => "Domino's Pizza"
pizza.nutrients.first.summary => "1 Piece -> 187.255 kcal Calories"
```
