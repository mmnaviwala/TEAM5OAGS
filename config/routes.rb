  # routes page for application
  #Gabe Ohlson
  #Date Approved: 4/22/2013 by Chris Cruz & Muhammad Naviwala 



TEAM5OAGS::Application.routes.draw do
  get "reports/customer_artist_preference"

  get "reports/past_purchase"

  get "reports/past_purchase_artwork_location"

  get "reports/artist_works"

  get "reports/speed_of_sale"
  get "reports/input_artist_works"
  get "reports/input_speed_sale"
  get "reports/input_past_purchase"
  get "reports/input_past_purchase_location"
  get "reports/input_customer_artist_preference"



  resources :testimonials
  match '/about', to: 'static_pages#about'
  match '/chat', to: 'static_pages#chat'
  match '/testimonials', to: 'static_pages#testimonials'
  match '/gallery', to: 'static_pages#gallery'
  

  resources :owners

  resources :works do
    member do
      get 'show_customer'
    end
  end

  resources :sessions, only: [:new, :create, :destroy]
  match '/signup',  to: 'customers#new'
  match '/signin',  to: 'sessions#new'
  match '/signout', to: 'sessions#destroy', via: :delete

  resources :transactions


  resources :employees


  resources :csos


  resources :dbas


  resources :customers


  resources :artists


  resources :users
  
  root to: 'static_pages#home'


  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
