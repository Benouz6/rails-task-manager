class TasksController < ApplicationController
  # GET tasks to: 'tasks#index'
  def index
    @tasks = Task.all
  end
end
