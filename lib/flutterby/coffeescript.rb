require "flutterby/coffeescript/version"
require "coffee-script"

module Flutterby
  module CoffeeScriptPlugin
    def process_coffee(input, node)
      ::CoffeeScript.compile(input)
    end
  end
end

Flutterby::Filters.extend(Flutterby::CoffeeScriptPlugin)
