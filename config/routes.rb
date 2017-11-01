Rails.application.routes.draw do
  resources :companies do
    resources :departments
  end

  resources :positions
  resources :applicants
  resources :score_cards
  resources :attributes

  root to: 'companies#index'
end
