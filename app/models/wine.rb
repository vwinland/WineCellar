class Wine < ApplicationRecord
    validates :rating, inclusion: { in: [1,2,3,4,5]}
end
