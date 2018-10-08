Rails.application.routes.draw do
  devise_for :users
  # get "/", to: "api#index", format: false
  scope :api do
    get "/timestamp", to: "api#timestamp", format: false
  end
  get "/*path", to: "home#index", format: false
  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
