require "flutterby/coffeescript/version"
require "coffee-script"

Flutterby::Filters.add("coffee") do |node|
  node.body = ::CoffeeScript.compile(node.body)
end
