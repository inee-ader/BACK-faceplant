class User < ApplicationRecord

    has_secure_password
    validates_presence_of :email 
    validates_uniqueness_of :email

    has_many :user_plants, dependent: :destroy
    has_many :likes, dependent: :destroy
    has_many :liked_plants, through: :likes, source: :user_plant
    has_many :comments, dependent: :destroy
    
    # has_many :monographs, through: :user_plants 

end
