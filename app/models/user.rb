class User < ApplicationRecord
    has_secure_password
    has_many :reviews
    has_many :wines, through: :reviews
    validates_presence_of :name, :password, :password_confirmation
    validates_uniqueness_of :name
end
