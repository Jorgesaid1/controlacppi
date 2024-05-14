Rails.application.routes.draw do
  get 'vinculos/new'
  get 'actividads/show'
  get 'actividads/new'
  get 'actividads/edit'
  get 'movimientos/new'
  get 'movimientos/create'
  get 'homeoffice/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :actividads
  resources :empleados do
    resources :homeoffices, only: [:new, :create] do
      resources :registrohos, only: [:new, :create] do
        resources :vinculos, only: [:new, :create]
      end
    end
  end

  # Defines the root path route ("/")
  # root "posts#index"
#  get "empleados", to: "empleados#index"
#  get "empleados/new", to: "empleados#new", as: :new_empleado
#  post "empleados", to: "empleados#create"
#  get "empleados/:id", to: "empleados#show", as: :mi_empleado
#  get "empleados/:id/edit", to: "empleados#edit", as: :edit_empleado
#  patch "empleados/:id", to: "empleados#update", as: :update_empleado
#  delete "empleados/:id", to: "empleados#destroy", as: :destroy_empleado
#  get "empleados/:id/homeoffices/new", to: "homeoffices#new", as: :new_homeoffice
#  post "empleados/:id/homeoffices", to: "homeoffices#create", as: :create_homeoffice
end
