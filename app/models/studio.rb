class Studio < ApplicationRecord
    validates_presence_of :name, :movies
    has_many :movies
end