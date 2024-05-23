Rails.application.routes.draw do
  resources :beers, only: [:index] do
    collection do
      get :search
    end
  end
  root 'beers#index'
end
