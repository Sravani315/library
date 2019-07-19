Rails.application.routes.draw do
  root to: 'welcome#index'

  resources :authors do
    resources :books
  end

  get '/books', to: 'books#books_list'
end
