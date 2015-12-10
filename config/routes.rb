Rails.application.routes.draw do


  get "/", to: "products#index", as: :root


  get "/users", to: "users#new", as: :new_user
  post "/new-user", to: "users#create"
  get "/sign-out", to: "sessions#sign_out", as: :sign_out
  post "/sign-in", to: "sessions#sign_in", as: :sign_in
  get "/sign-in", to: "sessions#sign_in"

  get "/admin/products", to: "admin#new", as: :products
  post "/admin/products", to: "products#create"
  delete "/admin/products/:id", to: "products#delete"
  get "/admin/products/edit/:id", to: "admin#edit", as: :edit
  post "/admin/products/edit/:id", to: "admin#update"

  get "/admin-order", to: "admin#orders"

  get "/admin/product-options/:id", to: "product_options#index", as: :options
  post "/admin/product-options/new", to: "product_options#create"
  delete "/admin/product-options/delete/:id", to: "product_options#delete"
  get "/admin/product-options/edit/:id", to: "product_options#edit", as: :edit_options
  post "/admin/products-options/edit", to: "product_options#update"


  get "/product/options/:id", to: "products#show"
  get "/view-account/:id", to: "users#show"
  post "/view-account/edit/:id", to: "users#edit"


  post "/cart/update-order", to: "orders#update"
  post "/cart/checkout/:id", to: "orders#create"
  get "/cart/checkout/:id", to: "orders#show"
  get "/cart", to: "items#show", as: :cart
  post "/cart/:id", to: "items#create"

  post "/cart/checkout/:id/confirmation", to: "orders#confirmation"
  get "/cart/checkout/:id/confirmation", to: "orders#confirmation"








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
