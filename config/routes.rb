Rails.application.routes.draw do
  root "bookmarks#index"

  resources :bookmarks
  resources :url_types
  resources :categories

  namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      get 'category/:id', to: 'endpoints#api'
    end
  end  
end
