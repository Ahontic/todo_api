# frozen_string_literal: true

class Api::V1::TasksController < ApplicationController
  before_action :authorize_request
  before_action :task_find, only: %i[update destroy status show]
  before_action :project_find, only: %i[index create]

  def index
    render json: TaskSerializer.new(@current_user.tasks).serialized_json, status: :ok
  end

  def create
    task = @project.tasks.create(task_params)
    if task.save
      render json: TaskSerializer.new(task).serialized_json, status: :created
    else
      render json: task.errors, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      task_renderer
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def show
    task_renderer
  end

  def destroy
    if @task.destroy
      render json: TaskSerializer.new(@current_user.tasks).serialized_json, status: :ok
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  def status
    if @task.toggle!(:status)
      task_renderer
    else
      render json: task.errors, status: :unprocessable_entity
    end
  end

  private

  def task_params
    params.permit(:name, :status, :deadline)
  end

  def task_find
    @task = @current_user.tasks.find(params[:id])
  end

  def project_find
    @project = @current_user.projects.find(params[:project_id])
  end

  def task_renderer
    render json: TaskSerializer.new(@task).serialized_json, status: :ok
  end
end
