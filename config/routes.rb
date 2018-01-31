Rails.application.routes.draw do
  resources :corsairs
  root to: 'static_pages#home'
end