lib = File.expand_path('lib', __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'skeletoruby/version'

Gem::Specification.new do |s|
  s.name          = 'skeletoruby'
  s.version       = Skeletoruby::VERSION
  s.date          = '2019-04-07'
  s.summary       = 'Builds a simple ruby folder structure'
  s.description   = 'Saves time in creating folder structures for simple plain ruby projects'
  s.authors       = ['Alex Avlonitis']
  s.email         = 'avlonitis@msn.com'
  s.homepage      = 'https://github.com/AlexAvlonitis/skeletoruby'
  s.license       = 'MIT'

  s.files          = Dir.glob('{bin,lib}/**/*') + %w[README.md]
  s.executables    = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.require_paths  = ['lib']

  s.add_development_dependency 'rspec'
  s.add_development_dependency 'thor'
end