class SongsController < ApplicationController
  before_action :set_artist

  def index
  end

  def show
    @song = Song.all
  end

  def new
    @song = @artist.songs.build
    @artist = Artist.find(params[:artst_id])
  end

  def create
    @song = @artist.songs.build(room_params)

    if @song.save
      redirect_to @artist, notice: "Song added"
    end

    def destroy
  end


  private



    def set_artist
      @artist = Artist.find(params[:artist_id])
    end

    def song_params
      params.require(:song).permit(:title)
    end
end
