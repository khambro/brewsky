Rails.application.routes.draw do


  get "/", to: "products#index"


  get "/users", to: "users#new", as: :new_user
  post "/new-user", to: "users#create"
  get "/sign-out", to: "sessions#sign_out", as: :sign_out
  post "/sign-in", to: "sessions#sign_in", as: :sign_in

  get "/admin/products", to: "admin#new", as: :products
  post "/admin/products", to: "products#create"
  delete "/admin/products/:id", to: "products#delete"
  get "/admin/products/edit/:id", to: "admin#edit", as: :edit
  post "/admin/products/edit/:id", to: "admin#update"

  get "admin/product-options/edit/:id", to: "product_options#index", as: :options
  post "admin/product-options/edit/:id", to: "product_options#create", as: :edit_options
  delete "admin/product-options/edit/:id", to: "product_options#delete"
  get "admin/product-options/edit/:id", to: "product_options#edit"
  post "admin/product-options/edit/:id", to: "product_options#update"


  get "/view-account/:id", to: "users#show"
  post "/view-account/edit/:id", to: "users#edit"

  get "/cart/:id", to: "orders#show", as: :cart




  get "/orders", to: "orders#show"

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
