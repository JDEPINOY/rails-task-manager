Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'tasks', to: 'tasks#index'
  #root to: 'tasks#index'
  #post "tasks", to: "tasks#create"
  # get 'tasks/new', to: "tasks#new", as: :new
  # get 'tasks/:id', to: 'tasks#show'
  # get "tasks/:id/edit", to: "tasks#edit", as: :edit
  #patch "tasks/:id", to: "tasks#update", as: :task
  # delete "tasks/:id", to: "tasks#destroy"
  resources :tasks #, only: [:index, :destroy, :show, :edit, :new, :tasks, :task]
end
