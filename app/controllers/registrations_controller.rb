class RegistrationsController < ApplicationController 

    
    def create 
        name1 = [Faker::Space.moon, Faker::Space.planet, Faker::Space.galaxy, Faker::Space.constellation]
      
        user = User.create!(
            name: params['user']['name'], 
            email: params['user']['email'], 
            password: params['user']['password'], 
            password_confirmation: params['user']['password_confirmation'], 
            username: name1.sample.gsub(/\s+/, ""), 
            headline: params['user']['headline'], 
            icon: ''
        )
        if user
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