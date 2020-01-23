class HikingtrailsController < ApplicationController
  before_action :find_trail, only: [:show, :create, :update, :destroy]

  def index
    hikingtrails = Hikingtrail.all
    render json: hikingtrails
  end


  def show 
    hikingtrail = Hikingtrail.find_by(id: params[:id])
    render json: hikingtrail
  end

  def create
    @hikingtrail = Hikingtrail.create_or_find_by(hikingtrail_params)
    render json: @hikingtrail
  end

  def update
      @hikingtrail.update(hikingtrail_params)
      render json: @hikingtrail
  end

  def destroy
      @hikingtrail.delete
  end

  private

  def find_trail
      @hikingtrail = Hikingtrail.find_by(id: params[:id])
  end

  def hikingtrail_params
      params.require(:hikingtrail).permit(:name, :distance, :location, :longitude, :latitude)
  end
end

