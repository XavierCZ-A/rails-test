Rails.application.routes.draw do
  get '/store_sections', to: 'store_sections#index', as: 'store_sections'
  get '/store_sections/new', to: 'store_sections#new', as: 'new_store_section'
  post '/store_sections', to: 'store_sections#create'  # Crear una nueva sección de la tienda
  delete '/store_sections/:id', to: 'store_sections#destroy'  # Eliminar una sección de la tienda

  resources :products
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
