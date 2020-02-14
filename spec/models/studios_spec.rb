require 'rails_helper'

RSpec.describe Studio, type: :model do 
    describe 'relationships' do
        it {should have_many :movies}
    end
end

# Story 1
# As a user, 
# When I visit the studio index page
# I see a list of all of the movie studios 
# And underneath each studio, I see the names of all of its movies