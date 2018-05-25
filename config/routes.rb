Rails.application.routes.draw do
  root 'static_bblws#home'

  get '/about', to: 'static_bblws#about'

  resources :bblws
end

# This will automatically include all of our basic CRUD routes 
# for pages (PRO TIP: rake routes will show all routes).
