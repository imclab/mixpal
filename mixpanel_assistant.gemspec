# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mixpal/version'

Gem::Specification.new do |spec|
  spec.name          = "mixpal"
  spec.version       = Mixpal::VERSION
  spec.authors       = ["patbenatar"]
  spec.email         = ["nick@gophilosophie.com"]
  spec.description   = "Use Mixpanel's JavaScript library from your backend with ease"
  spec.summary       = "As the JavaScript library is Mixpanel's preferred method of usage, Mixpal aims to make it easier to work with from your Rails backend. Most notably it persists tracking data across redirects, perfect for handling events like user sign ups or form submissions."
  spec.homepage      = "https://github.com/patbenatar/mixpal"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rspec", "~> 2.14.0"
  spec.add_development_dependency "guard-rspec", "~> 3.0.3"
  spec.add_development_dependency "rb-fsevent", "~> 0.9.3"
  spec.add_development_dependency "awesome_print", "~> 1.1.0"
  spec.add_development_dependency "nokogiri", "~> 1.6.0"

  spec.add_development_dependency "actionpack", ">= 3.0"

  spec.add_dependency "activesupport", ">= 3.0"
end
