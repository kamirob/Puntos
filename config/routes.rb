Rails.application.routes.draw do
  resources :item_entries
  resources :suppliers
  resources :item_outputs
  resources :equipment
  resources :category_equipments
  root'admin#index'
  devise_for :users
  resources :points
  resources :equipment_points
end
