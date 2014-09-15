Gem::Specification.new do |s|
  s.name        = 'gamejam-roulette'
  s.version     = '1.8.0'
  s.date        = '2010-09-14'
  s.summary     = "GameJam Roulettette API"
  s.description = "A fun Gem to play with GameJam Roulette API"
  s.authors     = ["Renato Alves"]
  s.email       = 'renatodex@gmail.com'
  s.files       = [
		"settings.rb",
		"lib/gamejam-roulette.rb",
		"lib/model/slot.rb",
		"lib/model/rom.rb",
		"lib/model/parser/TxtParser.rb",
		"lib/model/parser/BookParser.rb",
		"raw_databases/books.json",
		"raw_databases/snes.txt"
	]
  s.require_paths = ["lib"]
  s.homepage    =
    'http://donthavepageyet.com'
  s.license     = 'MIT'

  s.add_development_dependency "bundler", "~> 1.5"
  s.add_development_dependency "rake"
end
