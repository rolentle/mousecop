# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mousecop/version'

Gem::Specification.new do |spec|
  spec.name          = "mousecop"
  spec.version       = Mousecop::VERSION
  spec.authors       = ["Rolen Le"]
  spec.email         = ["rolentle@gmail.com"]
  spec.description   = "A Ruby Gem Wrapper for A Flamboyant Mock User Generator"
  spec.summary       = "This is a Ruby Gem Wrapper for A Flamboyant Mock User Generator found at http://collegebowl.avatarpro.biz/"
  spec.homepage      = "github.com/rolentle/mousecop"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
  spec.add_runtime_dependency "faraday"
end
