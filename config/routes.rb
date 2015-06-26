Rails.application.routes.draw do
  root 'pages#dashboard'
  get '/api/sshhhs' => 'api/sshhhs#index'
  post '/api/auth' => 'api/session#create', as: :auth
  post '/api/users' => 'api/users#create', as: :users
  get '/sign_in' => 'session#new', as: :sign_in

  post '/api/sshhhs' => 'api/sshhhs#create'
end
