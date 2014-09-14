module Gamejam
	class Rom
		attr_accessor :name, :images, :link, :type
	
		def initialize
		end
	
		def images
			@images ||= []
		end
	end
end