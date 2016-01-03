Rails.application.routes.draw do
  devise_for :users

  resources :feeds do
    resources :entries, only: [:index, :show]
  end

  root 'feeds#index'
end
