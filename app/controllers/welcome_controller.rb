class WelcomeController < ApplicationController
require 'json'
require 'net/http'

  def list
  end

  def details
  end

  # Service 
  def home
    # Pulls data from the Sequence Assessment Site 
    source = Net::HTTP.get('seq-front-end-assessment.s3-website-us-west-2.amazonaws.com', '/catalog.json')

    # Exposes the data back as JSON and renders it to the Page
    # This is just a proof of concept Service
    # No data is transformed, stored in database or image names pulled out due to the minimal amount of provided images
    @dt_h = JSON.parse(source)
    render json: @dt_h

    # Skeleton for future planned transformations and exposure as individual bike objects 
    @dt_h["products"].each do |key, array|
      puts "#{key}-----"
      puts array
      print "\n"
  end

end
end