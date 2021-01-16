json.extract! user_plant, :id, :user_id, :user_fav, :monograph_id, :common_name, :plant_name, :image_url, :personality, :insight, :story_notes, :difficulty, :sunlight, :moisture, :created_at, :updated_at
json.url user_plant_url(user_plant, format: :json)
