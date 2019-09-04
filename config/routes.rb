Rails.application.routes.draw do
  resources :post_images, only: [:new, :create, :show, :index] do
    resource :post_comments, only: [:create, :destroy]
    resource :favorites, only: [:create, :destroy]
  end

  devise_for :users
  root 'post_images#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
