Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :restaurants do
    resources :reviews, only: %i[new create]
  end
  resources :reviews, except: %i[index new create]
end
