# frozen_string_literal: true

require_relative 'lib/http_health_check/version'

Gem::Specification.new do |spec|
  spec.name          = 'http_health_check'
  spec.version       = HttpHealthCheck::VERSION
  spec.authors       = ['n.babushkin']
  spec.email         = ['n.babushkin@fun-box.ru']

  spec.summary       = 'Utilities for spinning up HTTP health check server.'
  spec.description   = spec.summary
  spec.homepage      = 'https://gitlab.sbmt.io/nstmrt/rubygems/http-health-check'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.5.0')

  spec.metadata['allowed_push_host'] = 'https://nexus.sbmt.io'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://gitlab.sbmt.io/nstmrt/rubygems/http-health-check'
  spec.metadata['changelog_uri'] = 'https://gitlab.sbmt.io/nstmrt/rubygems/http-health-check/-/blob/main/CHANGELOG.md'

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'rack', '~> 2.0'

  spec.add_development_dependency 'rspec', '~> 3.2'
  spec.add_development_dependency 'rubocop', '~> 0.81'
end
