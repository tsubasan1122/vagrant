Rails.application.routes.draw do
  
  get '/' => "root#top"
  resources :books
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
