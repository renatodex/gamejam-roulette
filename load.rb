require 'json'

if defined?(Motion::Project::Config)
	Motion::Project::App.setup do |app|
	  Dir.glob(File.join(File.dirname(__FILE__), '/lib/**/*.rb')).each do |file|
	    app.files.unshift(file)
	  end
	end
else
	require_relative 'settings'
	Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each { |file| require_relative file }
end