Rails.application.routes.draw do
  root "books#index"

  resources :books
  resources :pages

  get "dinosaurs/:id" => "dinosaurs#show", as: :dinosaur
end
