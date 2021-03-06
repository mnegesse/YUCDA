Rails.application.routes.draw do
  resources :cohorts
  resources :passwords, controller: "clearance/passwords", only: [:create, :new]
  resource :session, controller: "clearance/sessions", only: [:create]

  resources :users, controller: "clearance/users", only: [:create] do
    resource :password,
      controller: "clearance/passwords",
      only: [:create, :edit, :update]
  end
  root to: 'admin#index'
  get "/sign_in" => "clearance/sessions#new", as: "sign_in"
  delete "/sign_out" => "clearance/sessions#destroy", as: "sign_out"
  get "/sign_up" => "clearance/users#new", as: "sign_up"
  resources :courses
  delete '/courses/:id/delete' => 'courses#destroy'
  resources :teacher
  resources :student
  get '/student/:id/edit' => 'student#edit'
  resources :admin
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
