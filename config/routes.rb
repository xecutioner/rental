Rails.application.routes.draw do
  get 'callbacks/authentication'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rentals, only: [ :index, :show] do
    collection do
     match 'search', via: [:get, :post]
    end
  end
end
