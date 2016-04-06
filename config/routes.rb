Rails.application.routes.draw do

	match "/ais/drop" => "ais#drop", via: :get
	match "/ais/rundrop" => "ais#rundrop", via: :get
	match "/aquisitions/drop" => "aquisitions#drop", via: :get
	match "/aquisitions/rundrop" => "aquisitions#rundrop", via: :get
	match "/codes/drop" => "codes#drop", via: :get
	match "/codes/rundrop" => "codes#rundrop", via: :get
	match "/exploits/drop" => "exploits#drop", via: :get
	match "/exploits/rundrop" => "exploits#rundrop", via: :get

	match "/ais/calculate.html" => "ais#calcall", via: :get
	match "/aquisitions/calculate.html" => "aquisitions#calcall", via: :get
	match "/codes/calculate.html" => "codes#calcall", via: :get
	match "/exploits/calculate.html" => "exploits#calcall", via: :get

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
end
