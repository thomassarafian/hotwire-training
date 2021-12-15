Rails.application.routes.draw do
  resources :librairy_books

  root "librairy_books#index"
end
