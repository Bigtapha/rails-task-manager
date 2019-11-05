Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # GET /TASKS
  get 'tasks', to: 'tasks#index', as: :restaurants

  # GET /NEW and POST/NEW
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tassks#create'

  # GET /TASK/:id
  get 'tasks/:id', to: 'tasks#show', as: :task
end
