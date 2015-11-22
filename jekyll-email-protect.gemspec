Gem::Specification.new do |spec|
  spec.name          = "jekyll-email-protect"
  spec.version       = "1.0.1"
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
