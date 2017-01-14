Rails.application.routes.draw do
  root "books#index"

  # resources :books
  resources :pages

  resources :books do
    resources :pages
  end

end
