class User < ApplicationRecord
    has_secure_password
    has_many :wines
    has_many :reviews
end
