lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buble/version'

Gem::Specification.new do |s|
  s.name          = 'buble-ruby'
  s.version       = Buble::VERSION
  s.authors       = ['Matthias Grosser']
  s.email         = ['mtgrosser@gmx.net']

  s.summary       = 'Ruby bridge to the Bublé ES6 transpiler'
  s.homepage      = 'https://github.com/mtgrosser/buble-ruby'

  s.files = ['lib/buble.rb', 'lib/buble/version.rb', 'LICENSE', 'README.md']

  s.add_dependency 'buble-source'
  s.add_dependency 'execjs', '~> 2.0'

  s.add_development_dependency 'bundler', '~> 1.16'
  s.add_development_dependency 'rake', '~> 10.0'
  s.add_development_dependency 'minitest', '~> 5.0'
end
