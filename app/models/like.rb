class Like < ApplicationRecord

    belongs_to :user
    belongs_to :user_plant
     
    validates :user_plant, uniqueness: { scope: :user }
    # prevent user liking plant if user id matches logged in user
end
