Rails.application.routes.draw do
  devise_for :users

  root to: 'static_pages#home'
  match '/about', to: 'static_pages#about', via: 'get'

  # SEARCH ROUTES
  match '/search', to: 'search#new', via: 'get', as: :search
  match '/search', to: 'search#search', via: 'post', as: :result

  # INGREDIENT ROUTES
  match '/ingredients', to: 'ingredients#index', via: 'get', as: :ingredients
  match '/ingredients', to: 'ingredients#create', via: 'post'
  match '/ingredients/new', to: 'ingredients#new', via: 'get', as: :ingredient_new
  match '/ingredients/:id', to: 'ingredients#update', via: 'patch'
  match '/ingredients/:id', to: 'ingredients#show', via: 'get', as: :ingredient
  match '/ingredients/:id/edit', to: 'ingredients#edit', via: 'get', as: :ingredient_edit
  match '/ingredients/:id', to: 'ingredients#destroy', via: 'delete'
  match '/ingredients/by/:type', to: 'ingredients#type', via: 'get'

  # SUPPLIES ROUTES
  match '/supplies', to: 'supplies#index', via: 'get', as: :supplies
  match '/supplies', to: 'supplies#create', via: 'post', as: :supply_create
  match '/supplies/:id', to: 'supplies#destroy', via: 'delete'

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
