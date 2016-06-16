Rails.application.routes.draw do 

  devise_for :admin, :path=>"admin", :controllers => {  :sessions=>"admin/sessions"},
    :path_names => { :sign_in => 'login'}
  #devise_for :admins, :skip=>[:registration], :path=>"admins", :controllers => {  :sessions=>"admins/sessions"},
  #           :path_names => { :sign_in => 'login'}
  
  scope :api, :as=>:api do
    scope :v1, :as=>:v1 do
      resources :admins, :controller=>"api/v1/admins"
    end
  end


  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  get "admin" => "admin/home#index", as: :admin_root
  get "blog" => "blog#index", as: :blog_root 
  get "blog/:category" => "blog#category", as: :blog_category
  get "blog/:category/:blog" => "blog#show", as: :blog_show

  scope :admin, :as=>:admin do
    resources :admins, :controller=>"admin/admins"
    resources :advertisements, :controller=>"admin/advertisements"
    resources :blog_entries, :controller=>"admin/blog_entries" do 
      collection do 
        get "categories"
        get "new_category"
        post "create_category"
      end
      member do 
        get "edit_category"
        patch "update_category"
        delete "delete_category"
      end
    end
    resources :capsules, :controller=>"admin/capsules" do 
    end
  end
   

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
