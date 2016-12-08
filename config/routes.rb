Rails.application.routes.draw do
  root to: 'calendar#index'
  resources :events
  devise_for :users, controllers: { omniauth_callbacks: 'omniauth_callbacks' }

  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
