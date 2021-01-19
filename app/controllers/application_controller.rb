class ApplicationController < ActionController::Base

    skip_before_action :verify_authenticity_token 
    
    # def api(user)

    #     accessKey = "3bc78b9a41db441c927110510c5a87bb"

    #     response = RestClient.get "https://api.thenounproject.com/collection/48081/icons"

    #     json = JSON.parse response
        


    # end

end
