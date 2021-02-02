class CommentSerializer < ActiveModel::Serializer
  
  attributes :id, :user_id, :user_plant_id, :content, :user_icon, :user_name, :created_at
  
end
