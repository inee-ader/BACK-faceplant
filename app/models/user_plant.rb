class UserPlant < ApplicationRecord

    belongs_to :user
    # has_many :users, through: :likes
    has_many :likes, dependent: :destroy
    has_many :user_likes, through: :likes, source: :user
    has_one_attached :image
    has_many :comments, dependent: :destroy

    validates_numericality_of :moisture, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5
    validates_numericality_of :difficulty, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5
    validates_numericality_of :sunlight, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5

end
