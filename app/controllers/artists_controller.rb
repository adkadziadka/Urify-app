class ArtistsController < ApplicationController
  
  def index
    @artists = Artist.all
  end
    
    def show
    @artist = Artist.find(params[:id])
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
    
    def edit
        find_artist
    end
    
    def update
        @artist = Artist.find(params[:artist_id])
        
        if@artist.update_attributes(artist_params)
            redirect_to @artist
        else
            render 'edit'
        end
    end
    
    def destroy
        find_artist
        
        @artist.destroy
        redirect_to artist_artists_path, notice: "Artist deleted!"
    end
    
    private
    
    def find_artist
        @artist = Artist.find(params[:artist_id])
    end
    
    def artist_params
        artist_params- params.require(:atist).permit(:name, :age, :img_url)
    end
    

end
