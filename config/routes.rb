Rails.application.routes.draw do
  devise_for :users, only: [:sessions], controllers: {
        sessions: 'users/sessions'
      }
  resources :optatives, except: [:index ]
  root 'welcome#index'
  post 'optative/:id/register', as: :register, controller: :optatives, action: :register 
  get 'optative/:id/list', as: :list, controller: :optatives, action: :list
  match '/:anything', :to => "errors#not_found", :constraints => { :anything => /.*/ }, via: :all
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
