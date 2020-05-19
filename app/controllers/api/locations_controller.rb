class Api::LocationsController < ApplicationController
  def show
    @location = Location.find(params[:id])
    render 'show.json.jbuilder'
  end

  def create
    @location = Location.new(location_params)
    if @location.save
      render 'show.json.jbuilder'
    else
      render json: {errors: @location.errors.full_messages},status: :unprocessable_entity
    end
  end

  def update
    @location = Location.find(params[:id])
    @location.update(location_params)
    render 'show.json.jbuilder'
  end

  def delete
    location = Location.find(params[:id])
    location.destroy
    render json: {message: "Successfully Removed Location"}
  end

  private

  def location_params
    params
      .require(:location)
      .permit(:valorant_map_id, :character_id, :title, :x_axis, :y_axis, :angle, :location_type)
  end
end
