Rails.application.routes.draw do
  devise_for :utilizadors
  resources :vendas
  resources :focas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'focas#index'
  get '/docs' => 'docs#index'
end
