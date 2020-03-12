# frozen_string_literal: true

class Api::V1::TasksController < ApplicationController
  before_action :project_id_find
  before_action :task_find, only: %i[update destroy status deadline]

  def index
    render json: @project.tasks
  end

  def create
    task = @project.tasks.create(task_params)
    if task.save
      render json: task, status: :created
    else
      render json: task.errors, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      render json: @task, status: :ok
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @task.destroy
  end

  def status
    @task.toggle!(:status)
  end

  def deadline
    @task.update(task_params)
    deadline = @task.deadline
    if @task.update(deadline: deadline)
      render json: @task, status: :ok
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.permit(:name, :deadline)
  end

  def task_find
    @task = @project.tasks.find(params[:id])
  end

  def project_id_find
    @project = Project.find(params[:project_id])
  end
end
