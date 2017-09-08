Rails.application.routes.draw do


  get 'user/new'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'pages#index'

  match '/contact',     to: 'contacts#new',  via: 'get'


  resources "contacts", only: [:new, :create]

  match '/admin', to: 'session#new', via: 'get'
  post '/login', to: 'session#create'
  delete '/logout', to: 'session#logout'

  match '/news', to: 'news#new', via: 'get'
  post '/news', to: 'news#create'
  match '/news/:id', to: 'news#destroy', via: 'delete'
end
