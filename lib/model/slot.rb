module Gamejam
	module Roulette
		class Slot
			attr_accessor :builder_instance, :platform

			def initialize(platform, builder)
				self.platform = platform
				self.builder_instance = builder.new platform
			end

			def pick_rom
				self.builder_instance.roms.sample
			end
		end
	end
end
