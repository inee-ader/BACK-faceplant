class User < ApplicationRecord

    has_secure_password
    validates_presence_of :email 
    validates_uniqueness_of :email

    has_many :user_plants
    has_many :likes
    has_many :liked_plants, through: :likes, source: :user_plant
    
    # has_many :monographs, through: :user_plants 

    # is this plural user_plants?

end
