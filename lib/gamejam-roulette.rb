if defined?(Motion::Project::Config)
	Motion::Project::App.setup do |app|
		["/model/rom.rb", "/model/slot.rb", "/model/machine.rb", "/model/parser/BookParser.rb", "/model/parser/TxtParser.rb", "../settings.rb"].each do |f|
			app.files.unshift(File.join(File.dirname(__FILE__), f))
		end
	end
else
	require 'json'
	require_relative '../settings'
	Dir[File.dirname(__FILE__) + '/**/*.rb'].each { |file| require_relative file }
end
