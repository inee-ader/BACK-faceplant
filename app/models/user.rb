class User < ApplicationRecord

    has_secure_password
    validates_presence_of :email 
    validates_uniqueness_of :email

    has_many :user_plant 
    # is this plural user_plants?

end
