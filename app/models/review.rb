class Review < ApplicationRecord
    belongs_to :user
    belongs_to :wine
    #validates :rating, inclusion: { in: [1,2,3,4,5]}
    validates_presence_of :review
end
