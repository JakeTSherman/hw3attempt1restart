class PlaceController < ApplicationController
   
    def index
        @places = Place.all
      end

    
      def new 
        @place = Place.new
      end
    
      def create
        #values = params["company"]
        @place = Place.new(params["places"])
        @place.save
        redirect_to "/home"
      end

end
