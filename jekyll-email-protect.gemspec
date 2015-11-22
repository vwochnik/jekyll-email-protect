# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jekyll/email-protect/version'

Gem::Specification.new do |spec|
  spec.name          = "jekyll-email-protect"
  spec.version       = Jekyll::EmailProtect::VERSION
  spec.authors       = ["Vincent Wochnik"]
  spec.email         = ["v.wochnik@gmail.com"]
  spec.description   = %q{Email protection liquid filter for Jekyll}
  spec.summary       = %q{This plugin provides a simple liquid filter which converts emails into percent-encoded strings.}
  spec.homepage      = "https://github.com/vwochnik/jekyll-email-protect"
  spec.license       = "MIT"

  spec.files         = ["lib/jekyll-email-protect.rb", "README.md", "LICENSE.md"]
  spec.test_files    = [*Dir["spec/*.rb"]]
  spec.require_paths = ["lib"]

  spec.required_ruby_version = '>= 1.9.3'
  spec.add_development_dependency 'jekyll', '~> 3.0'
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "bundler", "~> 1.6"
end
