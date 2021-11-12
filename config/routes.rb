Rails.application.routes.draw do
resources :bookmarks
resources :url_types
resources :categories
  root "bookmarks#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
