class UserSerializer < ActiveModel::Serializer

    has_many :user_plants
    attributes :id, :name, :username, :icon, :user_plants
    has_many :liked_plants, through: :likes, source: :user_plants
    
    
end