Rails.application.routes.draw do

	namespace :api, defaults: {format: 'json'} do
		# /api/... Api::
		namespace :v1 do
			resources :songs
			put 'songs/:id', to: "songs#update"
		end
	end
  # get 'songs/index'

  # get 'songs/new'

  # get 'songs/create'

  # get 'songs/destroy'

   resources :songs, only: [:index, :new, :create, :destroy]
   root "songs#index"

	# root 'welcome#index'
    # get "/play" => "welcome#play"
end
