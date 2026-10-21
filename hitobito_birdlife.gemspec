$LOAD_PATH.push File.expand_path('../lib', __FILE__)

# Maintain your wagon's version:
require 'hitobito_birdlife/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = 'hitobito_birdlife'
  spec.version     = HitobitoBirdlife::VERSION
  spec.authors     = ['Matthias Viehweger', 'Carlo Beltrame', 'Andreas Maierhofer']
  spec.email       = []
  spec.homepage    = 'https://www.birdlife.ch/'
  spec.summary     = 'Birdlife'
  spec.description = 'Hitobito Wagon for BirdLife Schweiz/Suisse/Svizzera'

  spec.files = Dir['{app,config,db,lib}/**/*'] + ['Rakefile']
  spec.test_files = Dir['test/**/*']
end
