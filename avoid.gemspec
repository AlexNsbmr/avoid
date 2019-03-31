# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'avoid/version'

Gem::Specification.new do |spec|
  spec.name = "avoid"
  spec.version = Avoid::VERSION
  spec.authors = ["Alexandre Nussbaumer"]
  spec.email = ["alexnsbmr@gmail.com"]
  spec.description = %q{TBD)}
  spec.summary = %q{TBD}
  spec.homepage = "http://alexnsbmr.com"
  spec.license = "MIT"

  spec.files = `git ls-files`.split($/)
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.executables << "avoid"

  spec.add_development_dependency "rspec"

  spec.required_ruby_version = ">= 1.9.2"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end