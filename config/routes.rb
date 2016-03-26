Rails.application.routes.draw do

	resources :ais do
	get "delete"
	get "calculate"
	end
	resources :aquisitions do
	get "delete"
	get "calculate"
	end
	resources :codes do
	get "delete"
	get "calculate"
	end
	resources :exploits do
	get "delete"
	get "calculate"
	end

	root 'pages#console'

	get '/ais/cal' => "ais#calculate"

end
