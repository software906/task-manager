Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # resources crea el crud directamente resources :tasks
  # resources :tasks

  # Read
  get 'tasks', to: 'tasks#index', as: :tasks
  post 'tasks', to: 'tasks#create'
  get 'tasks/new', to: 'tasks#new', as: :newtask
  get 'tasks/:id/edit', to: 'tasks#edit', as: :editask
  get 'tasks/:id', to: 'tasks#show', as: :task
  patch 'tasks/:id', to: 'tasks#update'
  delete 'tasks/:id', to: 'tasks#destroy'
end
