Rails.application.routes.draw do

  namespace :api do
    namespace :v1 do
      resources :bathrooms, only: [:index]
      get '/status', to: 'bathrooms#status'
    end
  end

end
