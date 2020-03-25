Rails.application.routes.draw do
  root to: 'pictures#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :pictures do
    resources :tags, only: [:new, :create]
  end

  resources :tags, only: [:destroy]
end
