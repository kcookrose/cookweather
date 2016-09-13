class CitiesController < ApplicationController

  #def homepage
    def new
      @new_city = City.new(cityname: "Enter a city!")
      @city = City.order("id desc").first || @new_city
    end

    def create
      @city = City.new(params.require(:city).permit(:cityname))
      if @city.save
        redirect_to :new_city
      end
    end
  #end
end 
