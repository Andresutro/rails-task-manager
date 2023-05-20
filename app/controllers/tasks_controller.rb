class TasksController < ApplicationController
  def index
    @tasks =  Task.all
  end

  def show
    @task =  Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    @task = Task.new(task_params)
    if @task.save # Will raise
      redirect_to task_path(@task)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @task =  Task.find(task_params[:id])
    @task.update(task_params)
    @task.save
  end

  private
  def task_params
    params.require(:task).permit(:title,:details,:completed)
  end
end
