Rails.application.routes.draw do
  root 'post#index'

  resources :posts do
    resources :comments, except: :show
  end
  resources :categories, except: :show
end
