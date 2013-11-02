# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'pumistrano/version'

Gem::Specification.new do |spec|
  spec.name          = 'pumistrano'
  spec.version       = Pumistrano::VERSION
  spec.authors       = ['Patricio Mac Adden']
  spec.email         = ['patriciomacadden@gmail.com']
  spec.description   = %q{Puma for Capistrano 3}
  spec.summary       = %q{Puma for Capistrano 3}
  spec.homepage      = ''
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'capistrano', '~> 3.0.0'
  spec.add_development_dependency 'puma'
  spec.add_development_dependency 'rake'

  spec.add_runtime_dependency 'capistrano', '~> 3.0.0'
  spec.add_runtime_dependency 'puma'
end
