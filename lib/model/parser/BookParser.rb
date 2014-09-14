module Gamejam
	module Parser
		class Book
			attr_accessor :roms, :platform
	
			def initialize(platform)
				self.platform = platform
		
				::JSON.load(open("#{::Gamejam::Settings.database_path}/#{platform}.json")).each do |book|
					roms << build_rom(book)
				end
			end
	
			def roms
				@roms ||= []
			end
	
			def build_rom(book)
				rom = ::Gamejam::Rom.new
				rom.name = book["title"]
				rom.images << book["image_url"]
				rom.images << book["image_url"]
				rom.link = book["link"]
				rom.type = 'book'
				rom
			end
		end
	end
end