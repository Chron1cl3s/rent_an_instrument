Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :instruments, only: [:index, :show, :new, :create]
  resources :instruments do
    resources :bookings, only: [:index, :show, :new, :create, :edit]
  end
  resources :bookings, only: [:update]
  resources :users do
    resources :dashboards do
      resources :bookings, only: [:show, :edit, :update]
    end
  end
end
