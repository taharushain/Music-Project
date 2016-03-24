class WelcomeController < ApplicationController
	def index
		
	end

	def play
		`mplayer myfile.mp3`

		head :ok
	end
end
