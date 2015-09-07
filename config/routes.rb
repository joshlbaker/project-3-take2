Rails.application.routes.draw do

  # get 'playlists/show'

  root 'site#index'

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



  #            Prefix Verb URI Pattern                  Controller#Action
  #      sessions_new GET  /sessions/new(.:format)      sessions#new
  #   sessions_create GET  /sessions/create(.:format)   sessions#create
  #  sessions_destroy GET  /sessions/destroy(.:format)  sessions#destroy
  #        site_index GET  /site/index(.:format)        site#index
  #     playlists_new GET  /playlists/new(.:format)     playlists#new
  #    playlists_edit GET  /playlists/edit(.:format)    playlists#edit
  #  playlists_update GET  /playlists/update(.:format)  playlists#update
  #    playlists_show GET  /playlists/show(.:format)    playlists#show
  # playlists_destroy GET  /playlists/destroy(.:format) playlists#destroy
  #         users_new GET  /users/new(.:format)         users#new
  #      users_create GET  /users/create(.:format)      users#create
  #        users_show GET  /users/show(.:format)        users#show
