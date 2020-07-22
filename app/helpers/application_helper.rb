module ApplicationHelper
    
    def buildings_total_rent(building)
        occupied_floors = building.number_of_floors - building.number_of_floors_available.length
        total_rent = @building.rent_per_floor * occupied_floors
        number_to_currency(total_rent)
    end
    
    #     <% occupied_floors = @building.number_of_floors - @building.number_of_floors_available.length%>
# <% total_rent = @building.rent_per_floor * occupied_floors%>
# <%= number_to_currency(total_rent)%>
end
