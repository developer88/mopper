# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mopper/version'

Gem::Specification.new do |spec|
  spec.name          = "mopper"
  spec.version       = Mopper::VERSION
  spec.authors       = ["Andrey Eremin"]
  spec.email         = ["dsoft88@gmail.com"]
  spec.description   = %q{Import translations for Model from SCV file using Globalize3}
  spec.summary       = %q{Import translations for Model from SCV file using Globalize3}
  spec.homepage      = "https://github.com/developer88/mopper"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "activerecord", "~>3.0"
  spec.add_dependency "globalize3", "~>0.3.0"
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 2.9"
end
