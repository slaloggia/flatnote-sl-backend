Rails.application.routes.draw do
  resources :note_tags
  resources :notes
  resources :users
  resources :tags
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
