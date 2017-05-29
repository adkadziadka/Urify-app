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
    #artist_params = params.require(:artist).permit(:name, :age, :img_url)

    @artist = Artist.new(params[:id])

    if @artist.save
      redirect_to @artist
    else
      render 'new'
    end      
  end
    
  def edit
    @artist = Artist.find(params[:id])
  end

  def update
    @artist = Artist.find(params[:id])
    #artist_params = params.require(:artist).permit(:name, :age, :img_url)

    if @artist.update_attributes(params[:id])
      redirect_to @artist
    else
      render 'edit'
    end
  end

  def destroy
    @artist = Artist.find(params[:id])

    @artist.destroy

    redirect_to artists_path, notice: "Artist deleted!"
  end

  private

  def find_artist
    @artist = Artist.find(params[:id])
  end

#  def artist_params
#    params.require(:id).permit(
#        :name, 
#        :age, 
#        :img_url
#    )
#  end
    

end
