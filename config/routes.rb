MessageBooth::Application.routes.draw do

  namespace :captures do
    resources :photos
    resources :photo_booths
    resources :videos
    resources :audios
    resources :letters
    resources :urls
    resources :attachments
    resources :rsses
    resources :image_urls
  end

  namespace :displays do
    resources :photos
    resources :photo_booths
    resources :videos
    resources :audios
    resources :letters
    resources :urls
    resources :attachments
    resources :rsses
    resources :image_urls
  end
  
  resources :captures

  # match 'captures/photos' => 'captures#photos'

  # match 'captures/photo_booths' => 'captures#photo_booths'
  # match 'captures/videos' => 'captures#videos'
  # match 'captures/audios' => 'captures#audios'
  # match 'captures/letters' => 'captures#letters'
  # match 'captures/urls' => 'captures#urls'
  # match 'captures/attachments' => 'captures#attachments'
  # match 'captures/rsses' => 'captures#rsses'
  # match 'captures/image_urls' => 'captures#image_urls'

  resources :google_ps

  resources :twitters

  resources :facebooks

  resources :image_urls

  resources :rsses

  resources :attachments

  resources :letters

  resources :audios

  resources :videos

  resources :photo_booths

  resources :urls

  devise_for :users

  resources :displays


  resources :photos, :only => [:index, :show, :new, :create, :edit] do
    post 'upload', :on => :collection
  end

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
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
