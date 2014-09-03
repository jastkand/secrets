# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'secrets/version'

Gem::Specification.new do |spec|
  spec.name          = 'secrets'
  spec.version       = Secrets::VERSION
  spec.authors       = ['Andrey Krivko']
  spec.email         = ['jastkand@gmail.com']
  spec.summary       = 'Makes it easy to load config from secrets.yml'
  spec.description   = 'Makes it easy to load config from secrets.yml'
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'hashie', '~> 3.3.1'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
