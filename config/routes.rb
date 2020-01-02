Rails.application.routes.draw do
  resources :note_tags
  resources :notes
  resources :users, only: [:create, :index]
  resources :tags

  get '/users/:username', to: 'users#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
