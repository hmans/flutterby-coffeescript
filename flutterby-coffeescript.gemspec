# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'flutterby/coffeescript/version'

Gem::Specification.new do |spec|
  spec.name          = "flutterby-coffeescript"
  spec.version       = Flutterby::Coffeescript::VERSION
  spec.authors       = ["Hendrik Mans"]
  spec.email         = ["hendrik@mans.de"]

  spec.summary       = %q{CoffeeScript support for Flutterby.}
  spec.description   = %q{CoffeeScript support for Flutterby.}
  spec.homepage      = "https://github.com/hmans/flutterby-coffeescript"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "coffee-script", "~> 2"

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'gem-release', '~> 0'
end
