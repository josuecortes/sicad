Rails.application.routes.draw do
  resources :bairros
  resources :cidades
  get 'home/index'
  get 'home/nao_autorizado'
  get 'home/pessoas'
  get 'home/imoveis'
  get 'home/veiculos'

  resources :agendas
  resources :veiculos
  resources :imoveis
  resources :entidades
  resources :pessoas do
    get :autocomplete_pessoa_nome, :on => :collection
  end

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
