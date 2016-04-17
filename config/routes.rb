Rails.application.routes.draw do
  devise_for :users
  # devise default
  root to: "home#index"
end
