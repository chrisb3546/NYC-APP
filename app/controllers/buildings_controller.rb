class BuildingsController < ApplicationController

    def index
        @buildings = Building.all 

    end

    def show
        @building = Building.find_by(id: params[:id])
    end

    def edit
        @building = Building.find_by(id: params[:id])
    end

end


#### Building:

# - Users should be able to see a single building's details 
# 	- On this page, a user should be able to see all of the companies that have offices in the building
# 	- On this page, a user should be able to see how much total rent that building is making based on all the companies that have rented offices in that building
# - Users should be able to see a list of all buildings, as well as a list of all available floors for each building.
# 	- **_Hint_** this should be a list of the floor numbers that are available: 1, 3, 6, 8 etc. You may want to save this detail for later
# - Users should be able to update a building's details