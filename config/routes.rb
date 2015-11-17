Rails.application.routes.draw do

  resources :maps
  resources :health_terminologies
  resources :size_surgeries
  devise_for :users
  resources :bedrooms
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  get '/address/search' => 'address#search_postal_code'
  root :to => 'home#index'
  resources :surgeons do
    collection do
      get :search
    end
  end
  resources :users, path: 'customusers', shallow: true do
    get 'search', to: 'users#search', as: 'search', on: :collection
  end
  resources :anesthetists, shallow: true do
    get 'search', to: 'anesthetists#search', as: 'search', on: :collection
  end

  resources :hospitals do
    collection do
      get :search
    end
  end
  resources :health_insurances
  resources :patients

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
