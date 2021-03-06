Rails.application.routes.draw do
  devise_for :users, :controller => { :registrations => "registrations"}
  root to: "pages#index"

  devise_scope :user do 
  	get 'login' => "devise/sessions#new"
  	get 'signup' => "devise/registrations#new"
  end 

  resources :posts do 
  	collection do
  		get "hobby"
  		get "study"
  		get "team" 
  	end
  end 

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
