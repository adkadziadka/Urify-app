class ArtistsController < ApplicationController
  def show
    @artist = Artist.find(params[:artist_id])
  end
  def index
    @artists = Artist.all
  end
  def new
    @artist = Artist.new
  end

  def create
    artist_params = params.require(:artist).permit(:name, :age, :image_url)

    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    end
  end
end
