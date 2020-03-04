class Wine < ApplicationRecord
    belongs_to :users
    has_many :reviews
    has_many users, through: :reviews
    validates :rating, inclusion: { in: [1,2,3,4,5]}
end
