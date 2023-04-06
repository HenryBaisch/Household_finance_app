Rails.application.routes.draw do
  get 'expenses/index'
  get 'expenses/show'
  get 'expenses/new'
  get 'expenses/edit'
  get 'groups/index'
  get 'groups/show'
  get 'groups/new'
  get 'groups/edit'
  devise_for :users
  root 'groups#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :groups do
    resources :expenses
  end
  

  
  # Defines the root path route ("/")
  # root "articles#index"
end
