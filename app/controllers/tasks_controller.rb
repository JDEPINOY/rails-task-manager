class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
    # @task = Task.find params[:id]
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(task_params)
      # title: params[:task][:title],
      # details: params[:task][:details]
      # )
    redirect_to tasks_path
  end

  def edit
    # @task = Task.find params[:id]
  end

  def update
    # @task = Task.find params[:id]
    @task.update(task_params)
    # @task.update(
    #   title: params[:task][:title],
    #   details: params[:task][:details],
    #   completed: params[:task][:completed]
    #   )
    redirect_to tasks_path
  end

  def destroy
    # @task = Task.find(params[:id])
    @task.destroy

    # no need for app/views/restaurants/destroy.html.erb
    redirect_to tasks_path
  end

private

  def set_task
    @task = Task.find params[:id]
  end

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

end
