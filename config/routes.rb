Rails.application.routes.draw do
  # Routes for the Todo resource:
  # CREATE
  get '/new_todo' => 'todos#new'
  get '/create_todo' => 'todos#create'

  # READ
  get '/todos' => 'todos#index'
  get '/todos/:id' => 'todos#show'

  # UPDATE
  get '/todos/:id/edit' => 'todos#edit'
  get '/todos/:id/update' => 'todos#update'

  # DELETE
  get '/todos/:id/destroy' => 'todos#destroy'
  #------------------------------

  # Routes for the List resource:
  # CREATE
  get '/new_list' => 'lists#new'
  get '/create_list' => 'lists#create'

  # READ
  get '/lists' => 'lists#index'
  get '/lists/:id' => 'lists#show'

  # UPDATE
  get '/lists/:id/edit' => 'lists#edit'
  get '/lists/:id/update' => 'lists#update'

  # DELETE
  get '/lists/:id/destroy' => 'lists#destroy'
  #------------------------------

  # Routes for the User resource:
  # CREATE
  get '/new_user' => 'users#new'
  get '/create_user' => 'users#create'

  # READ
  get '/users' => 'users#index'
  get '/users/:id' => 'users#show'

  # UPDATE
  get '/users/:id/edit' => 'users#edit'
  get '/users/:id/update' => 'users#update'

  # DELETE
  get '/users/:id/destroy' => 'users#destroy'
  
  
  #Home
  get '/home'=>'users#home'
  
  #Login
  
  get '/mylist'=> 'users#list'
  
  
  get '/newlist'=> 'users#newlist'
  #------------------------------

  get '/create_todo/:id' => 'users#make'
  
  get '/todos/:id/destroy' => 'users#destro'
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
