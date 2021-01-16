class UserPlant < ApplicationRecord

    belongs_to :user
    
    validates_numericality_of :moisture, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5
    validates_numericality_of :difficulty, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5
    validates_numericality_of :sunlight, :greater_than_or_equal_to => 1, :less_than_or_equal_to => 5

end
