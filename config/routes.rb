Rails.application.routes.draw do
  resources :events do 
    collection do
      post :accept
      delete :reject
    end
  end
  root to: 'dashboard#index'
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    passwords: 'users/passwords',
    registrations: 'users/registrations'
  }
end
