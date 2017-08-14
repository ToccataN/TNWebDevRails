Rails.application.routes.draw do
<<<<<<< HEAD

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
root 'pages#index'

=======
  
#static page routes
  root "pages#index"
  get 'links' => "pages#links"
  get 'contact' => "pages#contact"
  get 'media' => "pages#media"
  get 'about' => "pages#about"
#User function routes  
  get 'signup' => 'users#new'
  resources :users

 
>>>>>>> 298a96f0d267def2f54e511cba512c9b7ece3eaa
end
