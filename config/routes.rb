Rails.application.routes.draw do
  
  namespace :api do
    namespace :v1 do
      resources :birds, only: [:index, :create, :update, :destroy]
      resources :days, only: [:index, :create, :update, :destroy]
    end
  end

end
