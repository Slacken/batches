# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'batches/version'

Gem::Specification.new do |spec|
  spec.name          = "batches"
  spec.version       = Batches::VERSION
  spec.authors       = ["binz"]
  spec.email         = ["xinkiang@gmail.com"]
  spec.summary       = %q{A simple wrapper of <cocurrence> threads to process <entities>}
  spec.description   = %q{Batches.do(cocurrence, entities, &block)}
  spec.homepage      = "https://github.com/Slacken/batches"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
