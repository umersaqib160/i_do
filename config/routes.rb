Rails.application.routes.draw do
  get 'demander/index'

  get 'demander/show'

  get 'profile/show'

  get 'profile/edit'

  get 'users/index'

  get 'users/show'

  get 'users/new'

  get 'supplier/index'

  get 'supplier/show'

  get 'reservations/new'

  get 'reservations/show'

  get 'services/index'

  get 'services/show'

  root to: 'pages#home'



resources :services, only: [:index, :show] do
  resources :reservations, only: [:new, :create]
end

namespace :supplier do
  resources :services
  resources :reservations, only: [:index, :show] do
    member do
      patch :confirm
      patch :decline
    end
  end
end


namespace :demander do
  resources :reservations, only: [:index, :show]
end





  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
