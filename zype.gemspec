Gem::Specification.new do |s|
  s.name = 'zype'
  s.version = '0.17.0'
  s.date = '2018-08-08'
  s.summary = 'Zype Platform Gem'
  s.description = 'Ruby library to interact with the Zype Platform API'
  s.authors = ['Zype']
  s.homepage = 'http://rubygems.org/gems/zype'
  s.files = Dir['lib/**/*.rb']
  s.require_paths = ["lib"]
  s.license = 'MIT'

  s.add_dependency('httparty', '~> 0.16')
  s.add_development_dependency('rspec', '~> 3.7')
  s.add_development_dependency('webmock', '~> 3.4')
end
