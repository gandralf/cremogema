Gem::Specification.new do |s|
  s.name = 'cremogema'
  s.version = '0.1.0'
  s.date = '2013-01-11'
  s.summary = 'Hello world class gem'
  s.description = 'There are lies. There are damn lies. And there are business.'
  s.authors = ['Alexandre Gandra']
  s.email = 'gandra@gmail.com'
  s.files = Dir.glob('lib/**/*.rb') + Dir.glob('ext/**/*.{c,h,rb}')
  s.extensions = ['ext/cremogema/extconf.rb']

  s.homepage = 'http://gandralf.com'
end