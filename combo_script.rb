#!/usr/bin/env ruby
require('./lib/combo.rb')

puts "Please enter an amount in whole dollars you want to convert into change"
value = gets.chomp
change = Change.new(value)
puts "With $.#{value} this is how many coins you will have\n"
puts change.coin_combos