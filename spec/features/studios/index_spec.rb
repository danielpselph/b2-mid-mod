require 'rails_helper'

RSpec.describe "As a user" do
    describe "When I visit a studios index page" do
        before :each do
            @studio1 = Studio.create(name: "Warner Bros", movies: "blank")
            @studio2 = Studio.create(name: "Paramount", movies: "apple")
        end

        it "I see a list of all the movie studios"

            visit '/studios'

            expect(page).to have_content(@studio1.name)
            expect(page).to have_content(@studio2.name)
        end
    end
end


# Story 1
# As a user, 
# When I visit the studio index page
# I see a list of all of the movie studios 
# And underneath each studio, I see the names of all of its movies.