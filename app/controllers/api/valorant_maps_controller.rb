class Api::ValorantMapsController < ApplicationController
  def show
    @valorant_map = ValorantMap.find(params[:id])
    render 'show.json.jbuilder'
  end
end
