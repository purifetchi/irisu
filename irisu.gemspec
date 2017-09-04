# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "irisu/version"

Gem::Specification.new do |spec|
  spec.name          = "irisu"
  spec.version       = Irisu::VERSION
  spec.authors       = ["prefetcher"]
  spec.email         = ["0xlunaric@gmail.com"]

  spec.summary       = "CLI Awoo client made in Ruby "
  spec.description   = "CLI Awoo client made in Ruby with the danger/u/ ruby api wrapper."
  spec.homepage      = "https://github.com/naomiEve/irisu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "bin"
  spec.executables   = ["irisu"]
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "dangeru", ">= 1.0.0"
end
