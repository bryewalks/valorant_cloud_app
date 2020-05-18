Rails.application.routes.draw do
  namespace :api do
    resources :locations
    resources :valorant_maps, only: [:show]
  end
end
