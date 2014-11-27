Rails.application.routes.draw do
  devise_for :users, :skip => [:registrations, :password]
  as :user do
    get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
  end
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
   root 'home#index'
   get '/' => 'home#index'
   get '/associe' => 'home#associe'
   get '/honoraire' => 'home#honoraire'
   get '/contact' => 'home#contact'
   get '/specialite' => 'home#specialite'
   get '/veille' => 'home#veille'
   

   #panneau admin


   get '/user' => 'admin#index'

##veille
   get '/user/veille' => 'admin#veille'
   post '/user/veille/create' => 'admin#create_veille'
   delete '/user/veille/delete' => 'admin#delete_veille'
   put '/user/veille/update' => 'admin#update_veille'

##associe
   get '/user/associe' => 'admin#associe'
   post '/user/associe/create' => 'admin#create_associe'
   delete '/user/associe/delete' => 'admin#delete_associe'
   put '/user/associe/update' => 'admin#update_associe'

##page
   put '/user/index/update' => 'admin#update_index'
   put '/user/honoraire/update' => 'admin#update_honoraire'
   put '/user/contact/update' => 'admin#update_contact'
   put '/user/specialite/update' => 'admin#update_specialite'


#i18n

  post '/en' => 'home#turn_en'
  post '/fr' => 'home#turn_fr'

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
