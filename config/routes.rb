Rails.application.routes.draw do

  root 'static_pages#home'

  get '/complete', to: 'lists#complete'

  resources :lists

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
