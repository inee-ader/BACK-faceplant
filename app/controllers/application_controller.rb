class ApplicationController < ActionController::Base
    API_KEY = ENV['API_KEY']
    API_SECRET = ENV['API_SECRET'] 

    # before_action :api
    skip_before_action :verify_authenticity_token 
    
    require 'oauth'
     
    def api 
        
        consumer = OAuth::Consumer.new(API_KEY, API_SECRET)
        access_token = OAuth::AccessToken.new consumer
        endpoint = "https://api.thenounproject.com/collection/48081/icons"

        response = access_token.get(endpoint)
        data = JSON.parse(response.body) 
        
        data["icons"].sample["preview_url"]

    end
    


end
