Rails.application.routes.draw do
  get 'sessions/new'
  get 'users/new'
  root 'static_pages#activities'  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/activities', to: 'static_pages#activities'
  get '/rentals' , to: 'static_pages#rentals'
  get '/bookings' , to: 'static_pages#bookings'
  get '/dashboard' , to: 'static_pages#dashboard'
  get '/portfolio' , to: 'static_pages#portfolio'
  get '/settings' , to: 'static_pages#settings'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'
   resources :users
end