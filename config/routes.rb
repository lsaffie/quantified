Rails.application.routes.draw do
  resources :companies do
    resources :departments
  end

  resources :positions do
    resources :applicants
  end

  resources :applicants do
    resources :score_cards
  end

  resources :departments
  resources :positions
  resources :applicants
  resources :score_cards
  resources :attributes

  root to: 'companies#index'
end
