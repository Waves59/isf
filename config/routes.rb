Rails.application.routes.draw do
  devise_for :users
  resources :categories
  resources :intuitors
  resources "contacts", only: [:new, :create]
  devise_for :users,
               :path => '', 
               :path_names => {:sign_in => 'login', :sign_out => 'logout', :edit => 'profile'}

  root 'static#index'
  get '/about' => 'static#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
