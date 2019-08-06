Rails.application.routes.draw do
  resources :equipment
  resources :category_equipments
  root'admin#index'
  devise_for :users
  resources :points
end
