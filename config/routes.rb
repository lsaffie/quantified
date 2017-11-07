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

  resources :score_cards do
    resources :attributes
  end

  root to: 'companies#index'
end
