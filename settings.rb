module Gamejam	
	class Settings
		class << self
			def root
				File.join(File.dirname(__FILE__))
			end
		
			def database_path
				"#{root}/raw_databases"
			end
		end
	end
end