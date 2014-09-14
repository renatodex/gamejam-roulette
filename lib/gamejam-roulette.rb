require_relative File.join(File.dirname(__FILE__), "../load.rb")

module Gamejam
	module Roulette
		class Machine
			attr_accessor :slots
			
			def add_slot(platform, parser)
				slots << Gamejam::Roulette::Slot.new(platform, parser).pick_rom
			end
			
			def slots
				@slots ||= []
			end
		end
	end
end