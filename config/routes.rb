Rails.application.routes.draw do
  resources :agendas
  resources :veiculos
  resources :imoveis
  resources :entidades
  resources :pessoas
  root to: 'visitors#index'
  devise_for :users
end
