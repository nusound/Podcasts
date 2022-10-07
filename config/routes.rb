Rails.application.routes.draw do
  
  get 'why-turtle', to: 'pages#about', as: 'why_turtle'
  get 'pricing', to: 'pages#pricing'
  # get 'contact', to: 'pages#contact'

  root to: 'pages#home'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :contacts, only: [:new, :create ]
  
  get '/contact', to: 'contacts#new', as: 'contact'
  get 'contacts/sent'
end
