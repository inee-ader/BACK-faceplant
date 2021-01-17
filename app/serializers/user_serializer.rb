class UserSerializer < ActiveModel::Serializer

    has_many :user_plants
    attributes :id, :name, :username, :headline, :user_plants
    
end