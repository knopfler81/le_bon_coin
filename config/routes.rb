Rails.application.routes.draw do

  ActiveAdmin.routes(self)
  mount Attachinary::Engine => "/attachinary"

  devise_for :users, controllers:{ registrations: "registrations"}
  root to: "adverts#index"

  resources :users, only: [:show]

  resources :adverts


  get  "offres",   to: "adverts#offers"
  get  "demandes", to: "adverts#demandes"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
