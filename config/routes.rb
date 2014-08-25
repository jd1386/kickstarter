Rails.application.routes.draw do

  resource :session
  	get '/signin', to: 'sessions#new', as: 'signin'

  get '/signup', to: 'users#new', as: 'signup'
  resources :users do
    resources :favorites
  end
		

  root "projects#index"

  resources :projects do
  	resources :pledges
    resources :favorites
	end
	
end
