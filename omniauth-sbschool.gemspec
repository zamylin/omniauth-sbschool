# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-sbschool/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-sbschool"
  spec.version       = Omniauth::Sbschool::VERSION
  spec.authors       = ["Ivan Zamylin"]
  spec.email         = ["zamylin@yandex.ru"]

  spec.summary       = %q{OAuth2 strategy for https://sberbank-school.ru}
  spec.homepage      = "https://github.com/zamylin/omniauth-sbschool"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]


  spec.add_runtime_dependency 'omniauth', '~> 1.0'
  spec.add_runtime_dependency 'omniauth-oauth2'

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
