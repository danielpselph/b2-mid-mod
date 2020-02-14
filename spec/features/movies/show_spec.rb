require 'rails_helper'

RSpec.describe 'As a user' do 
    describe 'When I visit a movies show page' do
        before :each do
            @movie1 = Movie.create(name: "Top Gun", year: "1876", genre: "Biography")
        end

        it 'I see the movies name, creation year and genre' do
            
            visit "/studios/movies/#{@movie1.id}"

            expect(page).to have_content(@movie1.name) 
            expect(page).to have_content(@movie1.year) 
            expect(page).to have_content(@movie1.genre) 
        end

    end
end




# Story 3
# As a user, 
# When I visit a movie's show page.
# I see the movie's name, creation year, and genre, 
# and a list of all its actors from youngest to oldest.
# And I see the average age of all of the movie's actors 