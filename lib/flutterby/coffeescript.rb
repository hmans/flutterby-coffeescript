require "flutterby/coffeescript/version"
require "coffee-script"

module Flutterby
  module CoffeeScriptPlugin
    def process_coffee!(node)
      node.body = ::CoffeeScript.compile(node.body)
    end
  end
end

Flutterby::Filters.extend(Flutterby::CoffeeScriptPlugin)
