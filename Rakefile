require 'rake'
require 'rake/clean'
require 'rspec/core'
require 'rspec/core/rake_task'

NAME = 'cremogema'
LIB_EXT = RbConfig::CONFIG['DLEXT']

file "lib/#{NAME}/#{NAME}.#{LIB_EXT}" => Dir.glob("ext/#{NAME}/*{.rb,.c}") do
  Dir.chdir("ext/#{NAME}") do
    # this does essentially the same thing
    # as what RubyGems does
    ruby "extconf.rb"
    sh "make"
  end
  cp "ext/#{NAME}/#{NAME}.#{LIB_EXT}", "lib/#{NAME}"
end

CLEAN.include('ext/**/*{.o,.log,.so,.dll,.bundle}')
CLEAN.include('ext/**/Makefile')
CLEAN.include('lib/**/*{.o,.log,.so,.dll,.bundle}')
CLEAN.include('*.gem')
CLOBBER.include('lib/**/*{.so,.dll,.bundle}')

task :spec => "lib/#{NAME}/#{NAME}.#{LIB_EXT}"
task :default => :spec
RSpec::Core::RakeTask.new(:spec)
