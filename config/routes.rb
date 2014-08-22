Rails.application.routes.draw do
  
  resource :session
  	get '/signin', to: 'sessions#new', as: 'signin'

  resources :users
		get '/signup', to: 'users#new', as: 'signup'

  root "projects#index"

  resources :projects do
  	resources :pledges
	end
	
end
