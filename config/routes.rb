Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'articles#index'
  resources :articles, only: [:index, :new, :edit, :create, :show]
  patch 'articles/:id', to: 'articles#update'
end
