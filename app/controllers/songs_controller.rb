class SongsController < ApplicationController
  before_action :set_artist
  
  def new
    @song = Song.new
  end
  
  def create
    #artist_params = params.require(:artist).permit(:name, :age, :img_url)

    @song = Song.new(params[:id])

    if @song.save
      redirect_to @song
    else
      render 'new'
    end      
  end
  
  def set_artist
  end
  
  

end

