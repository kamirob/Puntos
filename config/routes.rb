Rails.application.routes.draw do
  
  resources :inventories
  resources :item_entries
  resources :suppliers
  resources :item_outputs
  resources :equipment
  resources :category_equipments
  root'admin#index'
  devise_for :users
  resources :points
  resources :equipment_points
  get :add_equipment_point, to: "equipment#add_equipment_point", :defaults => { :format=> 'json'}
  get :add_pv, to: "points#add_pv", :defaults => { :format=> 'json'}

end
