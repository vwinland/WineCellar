class Wine < ApplicationRecord
    belongs_to_many :users
    validates :rating, inclusion: { in: [1,2,3,4,5]}
end
