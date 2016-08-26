Rails.application.routes.draw do
  get 'home/index'

  get 'home/nao_autorizado'

  resources :agendas
  resources :veiculos
  resources :imoveis
  resources :entidades
  resources :pessoas

  resources :usuarios do
    get :redefinir_senha
  end

  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
