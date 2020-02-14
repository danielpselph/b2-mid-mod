class Movie < ApplicationRecord
    validates_presence_of :name, :year, :genre
end