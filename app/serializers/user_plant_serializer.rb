class UserPlantSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers

  belongs_to :user
  has_many :likes
  has_many :user_likes, through: :likes, source: :user
  has_many :comments

  attributes :id, :user_id, :user_icon, :user_name, :image, :common_name, :plant_name, :personality, :insight, :story_notes, :difficulty, :sunlight, :moisture, :created_at, :comments

  def image 
    if object.image.attached?
      puts rails_blob_path(object.image, only_path: true)
    return rails_blob_path(object.image, only_path: true)
    else
      return "no photo"
    end
  end


end
