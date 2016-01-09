Rails.application.routes.draw do
  
#static page routes
  root "pages#index"
  get 'links' => "pages#links"
  get 'contact' => "pages#contact"
  get 'media' => "pages#media"
  get 'about' => "pages#about"
#User function routes  
  get 'signup' => 'users#new'


 
end
