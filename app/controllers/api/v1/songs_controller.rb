module Api
	module V1
		class SongsController < ApplicationController
			respond_to :json

			def index
				respond_with Song.all, status: :ok
			end

			def show
				respond_with Song.find(params[:id])
			end

			def create
				respond_with Song.create(params[:song])
			end

			def update
				@song = Song.find(params[:id])
				if @song.update_attributes(user_params)
					@song.vote = @song.vote + 1
					@song.save!
      		    end
        		# respond_with Song.update(params[:id])
 		   end


    def destroy
    	respond_with Song.destroy(params[:id])
    end

    private

    def user_params
    	# params.require(:user).permit(:name, :email, :password,
    	# 	:password_confirmation)
    end

end
end
end