Rails.application.routes.draw do

  root 'moods#index'

  # users 
  get '/signup', to: 'users#new'
  get '/profile', to: 'users#show'
  resources :users, only: [:create, :edit, :update, :show]

  # sessions
  get '/login', to: 'sessions#new'
  get '/logout', to: 'sessions#destroy'
  resources :sessions, only: [:create]

  # results
  get '/results', to: 'site#index'
  get '/about', to: 'site#about'

end

#          Prefix Verb   URI Pattern                   Controller#Action
#     moods_index GET    /moods/index(.:format)        moods#index
#      moods_show GET    /moods/show(.:format)         moods#show
#            root GET    /                             site#index
#          signup GET    /signup(.:format)             users#new
#         profile GET    /profile(.:format)            users#show
#           users POST   /users(.:format)              users#create
#       edit_user GET    /users/:id/edit(.:format)     users#edit
#            user GET    /users/:id(.:format)          users#show
#                 PATCH  /users/:id(.:format)          users#update
#                 PUT    /users/:id(.:format)          users#update
#           login GET    /login(.:format)              sessions#new
#          logout GET    /logout(.:format)             sessions#destroy
#        sessions POST   /sessions(.:format)           sessions#create
#         results GET    /results(.:format)            site#index
#           about GET    /about(.:format)              site#about





