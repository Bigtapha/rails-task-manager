Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # GET /TASKS
  get 'tasks', to: 'tasks#index', as: :tasks

  # GET /NEW and POST/NEW
  get 'tasks/new', to: 'tasks#new', as: :new_task
  post 'tasks', to: 'tasks#create'

  # GET /TASK/:id
  get 'tasks/:id', to: 'tasks#show', as: :task

  # GET /NEW and POST/NEW
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit_task
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE /restaurants/:id
  delete 'tasks/:id', to: 'tasks#destroy', as: :destroy
end
