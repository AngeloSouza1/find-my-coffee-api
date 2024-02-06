class Api::V1::GoogleStoresController < ApplicationController
    def index
      render json: GetGoogleCoffeeListService.new(params[:latitude].to_f, params[:longitude].to_f).call
    end
 
    def show
      render json: GetGoogleCoffeeDetailsService.new(params[:id]).call
    end
 
 
end
