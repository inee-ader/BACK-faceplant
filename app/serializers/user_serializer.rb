class UserPlantSerializer < ActiveModel::Serializer

    has_many :user_plants
    attributes :id, :name, :username, :headline
    
end