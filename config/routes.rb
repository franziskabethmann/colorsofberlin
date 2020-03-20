Rails.application.routes.draw do
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pictures do
    resources :tags, only: [:new, :create]
  end

  resources :tags, only: [:destroy]
end
