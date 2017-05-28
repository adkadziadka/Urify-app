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
    
    def update
        @artist = Artist.find(params[:artist_id])
        
        if@artist.update_attributes(artist_params)
            redirect_to @artist
        else
            render 'edit'
        end
    end

  def create
    artist_params = params.require(:artist).permit(:name, :age, :image_url)

    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    end
  end
end
