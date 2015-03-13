class BandsController < ApplicationController
  def new
    @band = Band.new
    render :new
  end

  def create
    @band = Band.new(band_params)
    if @band.save
      redirect_to band_url(@band)
    else
      flash[:errors] = "You must enter a band name!"
      render :new
    end
  end

  def show
    @band = Band.find_by_id(params[:id])
    render :show
      # flash[:errors] = "You must be logged in to view your band page!"
      # redirect_to new_session_url
  end

  private

  def band_params
    params.require(:band).permit(:name)
  end
end
