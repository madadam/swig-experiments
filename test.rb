#!/usr/bin/env ruby
require "./example"

Example::hello_world()
puts Example::add_int(2, 3)
Example::print_string("foo bar baz")

# Doesn't currently work like this
# Example::call do
#   puts "Hello from block"
# end
