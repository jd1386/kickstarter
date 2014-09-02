Rails.application.routes.draw do



  root "categories#index"

  resources :categories

  resource :session
  get '/signin', to: 'sessions#new', as: 'signin' 
  get '/signup', to: 'users#new', as: 'signup'
  
  resources :users do
    resources :favorites
  end
		
  resources :projects do
  	resources :pledges
    resources :favorites
	end

  namespace :admin do
    get '/', to: 'dashboard#index', as: '/'
    resources :projects, :users, :categories, :pledges, :faqs
  end

  namespace :help do
    get '/', to: 'dashboard#index', as: '/'
    resources :faqs
  end
	
  get '/contact', to: 'static_pages#contact', as: 'contact'
  
end
