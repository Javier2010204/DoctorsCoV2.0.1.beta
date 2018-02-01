Rails.application.routes.draw do

  resources :consultations
  resources :medical_histories
  	devise_for :users

	authenticated :user do
		root to: "home#index" 
	  	resources :consultations
		resources :categories
		resources :posts
		resources :appointments
		resources :patients
		get 'patients/:id/show_consultations', to: 'patients#show_consultations'
	end

	unauthenticated :user do
		root 'home#unregistered'
	end 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
