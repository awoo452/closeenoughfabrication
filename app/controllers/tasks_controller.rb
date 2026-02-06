class TasksController < ApplicationController
  def index
    data = Tasks::IndexData.call
    @tasks = data.tasks
  end

  # Action to show a specific task
  def show
    data = Tasks::ShowData.call(task_id: params[:id])
    @task = data.task
  end
end
