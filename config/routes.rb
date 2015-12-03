Rails.application.routes.draw do


  get "/", to: "products#index"


  get "/users", to: "users#new", as: :new_user
  post "/new-user", to: "users#create"
  get "/sign-out", to: "sessions#sign_out", as: :sign_out
  post "/sign-in", to: "sessions#sign_in", as: :sign_in

  get "/admin/new-products", to: "products#new", as: :new_product
  post "/admin/new-products", to: "products#create"
  delete "/admin/new-products/:id", to: "products#delete"
  get "/admin/new-products/edit/:id", to: "products#edit", as: :edit
  post "/admin/new-products/edit/:id", to: "products#update"

  get "/view-account/:id", to: "users#show"
  post "/view-account/edit/:id", to: "users#edit"

  get "/product/options/:id", to: "product_options#index"



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
