# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ted_api/version'

Gem::Specification.new do |gem|
  gem.name          = "greenhouse"
  gem.version       = Greenhouse::VERSION
  gem.authors       = ["John Barton, Oren Goldberg"]
  gem.email         = ["jb@phy5ics.com, ogoldberg@gmail.com"]
  gem.description   = %q{A gem for growing Cucumbers in a warm, collaborative environment.}
  gem.summary       = %q{}
  gem.homepage      = "https://github.com/phy5ics/greenhouse"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
  
  gem.add_dependency 'faraday', '~> 0.8.4'
  gem.add_dependency 'faraday_middleware', '~> 0.8.4'
  gem.add_dependency 'hashie', '~> 1.2'
  gem.add_dependency 'multi_json', '~> 1.3'
  gem.add_dependency 'multi_xml', '~> 0.5.0'
  
  gem.add_development_dependency 'json'
  gem.add_development_dependency 'maruku'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'webmock'
  
end
