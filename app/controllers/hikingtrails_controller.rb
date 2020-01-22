class HikingtrailsController < ApplicationController
  def index
    hikingtrails = Hikingtrail.all
    render json: hikingtrails
  end


  def show 
    hikingtrail = Hikingtrail.find_by(id: params[:id])
    render json: hikingtrail
  end
end
