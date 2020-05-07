Rails.application.routes.draw do
  # get 'events/index'
  # post 'events/create'
  # get 'events/show'
  # get 'events/delete'
  # get 'events/edit'
  # get 'events/new'
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
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
