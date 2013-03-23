Gem::Specification.new do |s|
  s.name        = 'range_splitter'
  s.version     = '2.0.1'
  s.summary     = 'Range Splitter'
  s.description = 'Splits a range into multiple ranges.'
  s.author      = 'Chris Patuzzo'
  s.email       = 'chris@patuzzo.co.uk'
  s.homepage    = 'https://github.com/tuzz/range_splitter'
  s.files       = ['README.md'] + Dir['lib/**/*.*']

  s.add_development_dependency 'rspec'
end
