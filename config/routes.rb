Rails.application.routes.draw do
  resources :trades
  resources :comentarios
  resources :usuariopregaos
  resources :pregoestitulosgraficos
  resources :pregoestitulos
  resources :indicadordetalheusuarios
  resources :indicadorsetupdetalhes
  resources :indicadorsetups
  resources :usuariosplanos
  resources :arquivos
  resources :tempograficos
  resources :titulos
  resources :indicadors
  resources :pregaos
  resources :usuarios
  resources :planos
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'static_pages#home'
  match '/training', to: 'static_pages#training', via: 'get'   
  match '/login', to: 'static_pages#login', via: 'get'
  match '/login', to: 'static_pages#login', via: 'post'
  match '/logoff', to: 'static_pages#logoff', via: 'get'   
   #root 'static_pages#home2'

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
