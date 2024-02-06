require 'rest-client'
require 'json'

class GetGoogleCoffeeListService 
    def initialize(latitude, longitude)  #ordem google maps
        @latitude = latitude
        @longitude = longitude
      end
  
      def call
        begin
          base_url = "https://maps.googleapis.com/maps/api/place/textsearch/json?query=coffee+shop&location=-#{@latitude},#{@longitude}&radius=5000&key=#{Rails.application.credentials.google_secret_key}"
          response = RestClient.get base_url
          JSON.parse(response.body)
        rescue RestClient::ExceptionWithResponse => 
          e.response
        end
      end
end