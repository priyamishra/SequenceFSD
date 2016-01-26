class DataController < ApplicationController

require 'json'
require 'net/http'

# Displays Catalog JSON feed USING GET request and Parse the JSON data
	def display

		source = Net::HTTP.get('seq-front-end-assessment.s3-website-us-west-2.amazonaws.com', '/catalog.json')

		@dt_h = JSON.parse(source)
		print @dt_h.keys
		print "\n"
		#puts dt_h.inspect

		@dt_h["products"].each do |key, array|
		  puts "#{key}-----"
		  puts array
		  print "\n"

	end

	def show

		respond_to do |f|
			format.json { render json: @dt_h }
		end
	end
	
end
end

