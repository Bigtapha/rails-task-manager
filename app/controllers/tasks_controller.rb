class TasksController < ApplicationController
  before_action :find_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save

    redirect_to '/tasks'
  end

  def edit
  end

  def update
    @task.update(task_params)
    # @task.update_column(completed: true) if params[:completed] == '1'

    redirect_to '/tasks', notice: 'task have been updated'
  end

  def destroy
    @task.destroy

    redirect_to '/tasks', notice: "#{@task.title} have been successfully destroyed"
  end
  
  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  def find_task
    @task = Task.find(params[:id])
  end
end
