require "flutterby/coffeescript/version"

module Flutterby
  module Coffeescript
    # Your code goes here...
  end

  module Filters
    puts "extending!"
    def self.process_coffee(input, node)
      "moo"
    end
  end
end

puts "hi from flutterby/coffeescript"
