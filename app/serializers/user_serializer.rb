class UserSerializer < ActiveModel::Serializer

    has_many :user_plants
    attributes :id, :name, :username, :icon, :headline, :user_plants
    has_many :liked_plants, through: :likes, source: :user_plants
    
    
end