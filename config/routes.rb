Rails.application.routes.draw do
  get 'errors/not_found'

  devise_for :users, only: [:sessions], controllers: {
        sessions: 'users/sessions'
      }
  resources :optatives
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
