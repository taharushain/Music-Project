class SongsController < ApplicationController

  def index
  	@songs = Song.all
  end

  def new
  	@song = Song.new
  end

  def create
  	@song = Song.new(song_params)
    @song.votes = 0      
      if @song.save
         redirect_to songs_path, notice: "The song #{@song.name} has been uploaded."
      else
         render "new"
      end
  end

  def destroy
  	  @song = Song.find(params[:id])
      @song.destroy

      respond_to do |format|
      format.html { redirect_to songs_path, notice:  "The song #{@song.name} has been deleted." }
      format.json { head :no_content }
      format.js   { render :layout => false }
   end
  end

  private
      def song_params
      params.require(:song).permit(:name, :music, :artist, :image, :genre)
   end

end