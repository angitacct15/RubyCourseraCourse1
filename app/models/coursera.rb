# require not needed we are using bundler
# require is used to import contents of another file into this file
#require 'httparty'
#require 'pp'

class Coursera
	# include to make all the methods of httparty available to use in this class
	include HTTParty

	base_uri 'https://api.coursera.org/api/courses.v1'
	default_params fields: "photoUrl", q: "search"
	format :json

	def self.for(term)
		get("", query: { query: term})["elements"]
	end
end

#pp Coursera.for "ruby"