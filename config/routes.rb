Rails.application.routes.draw do
  # Create a task


  # Read a task
  get '/tasks', to: 'tasks#index'
  get '/tasks/:id', to: 'tasks#show', as: :task
end
