Rails.application.routes.draw do
  # require 'sidekiq/web'

  mount_devise_token_auth_for 'User', at: 'auth', skip: [:invitations], controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions" ,
    # invitations: 'users/invitations'
  }
  
  # mount Sidekiq::Web => '/sidekiq'

   devise_for :users, path: "auth", only: [:invitations],
    controllers: { invitations: 'users/invitations' }

 get '/users', to: 'user#index'

 get "/businesses", to: 'industry#index'
 get "/businesses/search", to: 'industry#search'
 get "/businesses/get_highest", to: "industry#get_highest_value"
 get  "businesses/get_lowest", to: "industry#get_lowest_value"
  
end
