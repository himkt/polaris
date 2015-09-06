# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'polaris/nlp/version'

Gem::Specification.new do |spec|
  spec.name          = "polaris-nlp"
  spec.version       = Polaris::Nlp::VERSION
  spec.authors       = ["himkt"]
  spec.email         = ["himkt@klis.tsukuba.ac.jp"]

  spec.summary       = %q{Polaris, tool for polarity analysis}
  spec.description   = %q{Polaris provides methods for polarity analysis (semantic orientations).}
  spec.homepage      = "https://github.com/himkt/polaris"
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sqlite3"
  spec.add_dependency "natto"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
