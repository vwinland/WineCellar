class Review < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many_wines through: :reviews
end
