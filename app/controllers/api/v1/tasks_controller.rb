# frozen_string_literal: true

class Api::V1::TasksController < ApplicationController
  before_action :authorize_request
  before_action :task_find, only: %i[update destroy status]

  def index
    render json: TaskSerializer.new(@current_user.tasks).serialized_json, status: :ok
  end

  def create
    task = @current_user.tasks.create(task_params)
    if task.save
      render json: TaskSerializer.new(task).serialized_json, status: :created
    else
      render json: task.errors, status: :unprocessable_entity
    end
  end

  def update
    if @task.update(task_params)
      render json: TaskSerializer.new(@task).serialized_json, status: :ok
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

  private

  def task_params
    params.permit(:name, :status, :deadline)
  end

  def task_find
    @task = @current_user.tasks.find(params[:id])
  end
end
