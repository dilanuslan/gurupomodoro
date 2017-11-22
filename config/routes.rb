Rails.application.routes.draw do
  get 'invitations/create'

  get 'invitations/accept'

  get 'invitations/show'

  root 'welcome#index'

  devise_for :users, controllers: {
    sessions: 'users/sessions',
    omniauth_callbacks: 'users/omniauth_callbacks'
  }

  resources :teams


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
