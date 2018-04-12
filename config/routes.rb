Rails.application.routes.draw do
  resources :categories
  resources :intuitors

  root 'static#index'
  get '/about' => 'static#about'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
