class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using the ID from the URL
    # send a json responce using that cheese object
    cheese = Cheese.find_by(id: params[:id])
    render json: cheese
  end

end
