Rails.application.routes.draw do
  get 'year/edit/:id', controller: 'year', action: 'edit', as: :edit_year
  post 'year/update/:id', controller: 'year', action: 'update'
  get 'year/index' 

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
