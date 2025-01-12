# frozen_string_literal: true

lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'date'
require_relative 'lib/sensu-plugins-hangouts-chat'

Gem::Specification.new do |s| # rubocop:disable Metrics/BlockLength
  s.authors                = ['Benjamin Digeon']
  s.date                   = Date.today.to_s
  s.description            = 'Sensu plugins for google hangouts chat'
  s.email                  = '<bdigeon@clever-age.com>'
  s.executables            = Dir.glob('bin/**/*.rb').map { |file| File.basename(file) }
  s.files                  = Dir.glob('{bin,lib}/**/*') + %w[LICENSE README.md CHANGELOG.md]
  s.homepage               = 'https://github.com/clevertoday/sensu-plugins-hangouts-chat'
  s.license                = 'MIT'
  s.name                   = 'sensu-plugins-hangouts-chat'
  s.platform               = Gem::Platform::RUBY
  s.post_install_message   = 'You can use the embedded Ruby by setting EMBEDDED_RUBY=true in /etc/default/sensu'
  s.require_paths          = ['lib']
  s.required_ruby_version  = '>= 2.3.0'
  s.summary                = 'Sensu plugins for Google Hangouts Chat'
  s.test_files             = s.files.grep(%r{^(test|spec|features)/})
  s.version                = SensuPluginsHangoutsChat::Version::VER_STRING

  s.add_runtime_dependency 'sensu-plugin', '~> 4.0'

  s.add_development_dependency 'bundler',                   '~> 1.7'
  s.add_development_dependency 'github-markup',             '~> 1.3'
  s.add_development_dependency 'pry',                       '~> 0.10'
  s.add_development_dependency 'rake',                      '~> 10.5'
  s.add_development_dependency 'redcarpet',                 '~> 3.2'
  s.add_development_dependency 'rspec',                     '~> 3.4'
  s.add_development_dependency 'rubocop',                   '~> 0.59.2'
  s.add_development_dependency 'simplecov',                 '~> 0.16'
  s.add_development_dependency 'webmock',                   '~> 3.4'
  s.add_development_dependency 'yard',                      '~> 0.9.11'
end
