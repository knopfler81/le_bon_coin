Rails.application.routes.draw do

  mount Attachinary::Engine => "/attachinary"

  devise_for :users
  root to: "adverts#index"

  resources :adverts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
