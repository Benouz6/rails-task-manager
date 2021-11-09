class TasksController < ApplicationController
  # GET tasks to: 'tasks#index'
  def index
    @tasks = Task.all
  end

  # GET '/tasks/:id', to: 'tasks#show'
  def show
    @task = Task.find(params[:id])
  end

  def new

  end
end
