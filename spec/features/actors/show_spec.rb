require 'rails_helper'

RSpec.describe "As a user" do
    describe "When I visit an actors show page" do
        before :each do
            @actor1 = Actor.create(name: "Tom Cruise", age: "7")
        end    

        it "I see their name, age and list of names of all movies they are in" do 

            visit "/actors/#{@actor1.id}"

            expect(page).to have_content(@actor1.name)
            expect(page).to have_content(@actor1.age)
        end
    end
end


# Story 2
# As a user,
# When I visit an actor's show page,
# I see their name, their age, and a list of the names of all of the movies they are in.