class UserPlantSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :user_fav, :monograph_id, :common_name, :plant_name, :image_url, :personality, :insight, :story_notes, :difficulty, :sunlight, :moisture
end
