class AlbumsController < ApplicationController
  def new
    @album = Album.new
    render :new
  end

  def create
    @album = Album.new(album_params)
    if @album.save
      redirect_to albums_url(@album)
    else
      flash[:errors] = "Need more information!"
      render :new
    end
  end

  def show
    @album = Album.find_by_id(params[:album][:id])
    render :show
  end

  private

  def album_params
    params.require(:album).permit(:name, :band_id, :style)
  end
end
