Rails.application.routes.draw do
  devise_for :users

  resources :payment_maps
  resources :versions

  get '/address/search' => 'address#search_postal_code'
  root :to => 'maps#index'

  get 'plantonistas', to: 'noauth#list_duties'

  resources :users, path: 'customusers', shallow: true do
    get 'search', to: 'users#search', as: 'search', on: :collection
  end
  resources :anesthetists, shallow: true do
    get 'search', to: 'anesthetists#search', as: 'search', on: :collection
  end
  resources :surgeons, shallow: true do
    get 'search', to: 'surgeons#search', as: 'search', on: :collection
  end
  resources :patients, shallow: true do
    get 'search', to: 'patients#search', as: 'search', on: :collection
  end
  resources :hospitals, shallow: true do
    get 'search', to: 'hospitals#search', as: 'search', on: :collection
  end
  resources :health_insurances, shallow: true do
    get 'search', to: 'health_insurances#search', as: 'search', on: :collection
  end
  resources :health_terminologies, shallow: true do
    get 'search', to: 'health_terminologies#search', as: 'search', on: :collection
    get 'version', to: 'health_terminologies#index_version', on: :collection
  end
  resources :maps, shallow: true do
    get 'search', to: 'maps#search', as: 'search', on: :collection
  end
  resources :on_duties, shallow: true do
    get 'search', to: 'on_duties#search', as: 'search', on: :collection
  end
  resources :size_surgeries, shallow: true do
    get 'search', to: 'size_surgeries#search', as: 'search', on: :collection
  end
  resources :bedrooms, shallow: true do
    get 'search', to: 'bedrooms#search', as: 'search', on: :collection
  end
end
