# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'coverage/badge/version'

Gem::Specification.new do |spec|
  spec.name          = 'coverage-badge'
  spec.version       = Coverage::Badge::VERSION
  spec.authors       = ['Andrey Orsoev']
  spec.email         = ['andrey.orsoev@gmail.com']

  spec.summary       = 'Generate a SVG badge with coverage data'
  spec.description   = 'Provide a coverage information for your codebase'
  spec.homepage      = 'https://github.com/andreyors/coverage-badge'

  unless spec.respond_to?(:metadata)
    raise 'RubyGems 2.0+ is required to protect against public gem pushes.'
  end

  spec.metadata['allowed_push_host'] = 'https://github.com/andreyors/coverage-badge'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/andreyors/coverage-badge'
  spec.metadata['changelog_uri'] = 'https://github.com/andreyors/coverage-badge/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  end
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 2.2'
  spec.add_development_dependency 'rake', '~> 13.0'
  spec.add_development_dependency 'rspec', '~> 3.8.0'
  spec.add_development_dependency 'rspec-core', '~> 3.8.0'
  spec.add_development_dependency 'rubocop', '~> 1.34.1'
  spec.add_development_dependency 'simplecov', '~> 0.21.2'
end
