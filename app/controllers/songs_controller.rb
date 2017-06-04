class SongsController < ApplicationController

	def index
    @songs = Song.all
 	end
	
 	def new
    @song = Song.new
 	end
  
 	def create
    @artist = Artist.find_by_name(params[:song][:artist])
    @song = Song.new(song_params.merge(artist: @artist))

    respond_to do |format|
      if @song.save
        format.html { redirect_to artist_path(@artist), notice: "Song saved!" }
        format.json { render :show, status: :created, location: @song }
      else
        format.html { render :new }
        format.json { render json: @song.errors, status: :unprocessable_entity }
      end
    end   
 	end
    
 	def edit
    @song = Song.find(params[:id])
 	end

 	def update
    @song = Song.find(params[:id])

    if @song.update_attributes(song_params)
      redirect_to @song, notice: "Song updated!"
    else
      render :edit
    end
 	end

	def show
		@song = Song.find(params[:id])
		@artist = Artist.find(@song.artist.id)
	end
	
 	def destroy
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist.id)

    @song.destroy

    respond_to do |format|
      format.html { redirect_to songs_path, notice: "Song deleted!" }
      format.json { render :show, status: :deleted, location: @artist }
    end 

    
 	end

 	private
	
	def song_params
		params.require(:song).permit(:title, :description, :year)
	end
end

