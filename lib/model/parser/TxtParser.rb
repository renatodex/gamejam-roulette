module Gamejam
	module Parser
		class Txt
			attr_accessor :roms, :platform
	
			def initialize(platform)
				self.platform = platform
		
				File.read("#{::Gamejam::Settings.database_path}/#{platform}.txt").each_line do |raw_name|
					roms << build_rom(raw_name)
				end
			end
	
			def roms
				@roms ||= []
			end
	
			def build_rom(name)
				rom_name = name.gsub("\n", "")
				rom_name_link = rom_name.gsub(' ', '+').gsub('(', '').gsub(')', '')
		
				rom = ::Gamejam::Rom.new
				rom.name = name.gsub("\n", "")
				rom.images << "http://coolrom.com/screenshots/#{platform}/#{rom_name}.jpg"
				rom.images << "http://coolrom.com/screenshots/#{platform}/#{rom_name} (2).jpg"
				rom.link = "http://coolrom.com/search?q=#{rom_name_link}"
				rom.type = 'text'
		
				rom
			end
		end
	end
end