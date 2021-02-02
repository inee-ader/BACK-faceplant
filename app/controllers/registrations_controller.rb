class RegistrationsController < ApplicationController 

    
    def create 
        name1 = Haikunator.haikunate(0)
      
        api 

        user = User.create!(
            name: params['user']['name'], 
            email: params['user']['email'], 
            password: params['user']['password'], 
            password_confirmation: params['user']['password_confirmation'], 
            username: name1, 
            icon: api
        )
        if user
            # api(user)
            session[:user_id] = user.id
            render json: {
                status: :created, 
                user: user
            }
        else 
            render json: { status: 500 }
        end
    end

    

    
end