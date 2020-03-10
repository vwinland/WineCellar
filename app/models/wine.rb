class Wine < ApplicationRecord
    has_many :reviews
    #has_many :users, through: :reviews

    def self.red
        where(grape_variety: 'Red')
    end

    def self.white
        where(grape_variety: 'White')
    end

    def self.sparkling
        where(grape_variety: 'Sparkling')
    end


    #scope :wine => { where(grape_variety: 'Red') }
end
