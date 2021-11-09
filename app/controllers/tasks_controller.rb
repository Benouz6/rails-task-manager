class TasksController < ApplicationController
  # GET tasks to: 'tasks#index'
  def index
    @tasks = Task.all
  end

  # GET '/tasks/:id', to: 'tasks#show'
  def show
    @task = Task.find(params[:id])
  end

  # get '/tasks/new', to: 'tasks#new', as: :new_task
  def new
    @task = Task.new
  end

  # post '/tasks', to: 'tasks#create', as: :tasks
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to :tasks
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to :tasks
  end

  private

  def task_params
    params.require(:task).permit(:title, :details)
  end
end
