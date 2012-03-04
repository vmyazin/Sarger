class SubtasksController < ApplicationController
  def create
    @task = Task.find(params[:task_id])
    @subtask = @task.subtasks.create(params[:subtask])
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:task_id])
    @subtask = @task.subtasks.find(params[:id])
    @subtask.destroy
    redirect_to task_path(@task)
  end
end
