Rails.application.routes.draw do
  # Create a task
  get '/tasks/new', to: 'tasks#new', as: :new_task
  post "/tasks", to: "tasks#create", as: :tasks

  # Read a task
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: :task
end
