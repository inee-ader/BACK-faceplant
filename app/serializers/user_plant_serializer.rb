class UserPlantSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  belongs_to :user
  has_many :likes
  has_many :user_likes, through: :likes, source: :user
  

  attributes :id, :user_id, :user_icon, :user_name, :image, :user_fav, :monograph_id, :common_name, :plant_name, :personality, :insight, :story_notes, :difficulty, :sunlight, :moisture, :created_at

  def image 
    if object.image.attached?
    return rails_blob_path(object.image, only_path: true)
    else
      return "no photo"
    end
  end

end
