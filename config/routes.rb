Rails.application.routes.draw do
  root 'static_postits#home'
  
  get '/about', to: 'static_postits#about'
  
  resources :postits
end
