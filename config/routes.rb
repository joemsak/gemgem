Rails.application.routes.draw do
  resources :things, except: [:show, :destroy]

  root to: "things#index"
end
