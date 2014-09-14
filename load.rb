require 'json'
require_relative 'settings'
Dir[File.dirname(__FILE__) + '/lib/**/*.rb'].each { |file| require_relative file }