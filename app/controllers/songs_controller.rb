class SongsController < ApplicationController

	def index
    @songs = Song.all
 	end
	
 	def new
    @song = Song.new
 	end
  
 	def create
    #song_params = params.require(:song).permit(:name, :age, :img_url)

    @song = Song.new(song_params.merge(artist_id: params[:artist_id]))

    if @song.save
      redirect_to artist_path(@artist.id), notice: "Song saved!"
    else
      render :new
    end      
 	end
    
 	def edit
    @song = Song.find(params[:id])
 	end

 	def update
    @song = Song.find(params[:id])
    #song_params = params.require(:song).permit(:name, :age, :img_url)

    if @song.update_attributes(params[:id])
      redirect_to @song, notice: "Song updated!"
    else
      render :edit
    end
 	end

	def show
		@song = Song.find(params[:id])
		@artist = Artist.find(@song.artist_id)
	end
	
 	def destroy
    @song = Song.find(params[:id])

    @song.destroy

    redirect_to artist_songs_path, notice: "Song deleted!"
 	end

 	private
	
	def song_params
		params.require(:song).permit(:title, :artist, :description, :year)

	end
end

