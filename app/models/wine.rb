class Wine < ApplicationRecord
    has_many :reviews
    has_many :users, through: :reviews
    validates_presence_of :name

    scope :red, -> { where(grape_variety: 'Red') }
    scope :white, -> { where(grape_variety: 'White') }
    scope :sparkling, -> { where(grape_variety: 'Sparkling')} 
  
end
