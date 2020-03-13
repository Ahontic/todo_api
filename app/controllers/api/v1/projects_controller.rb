# frozen_string_literal: true

class Api::V1::ProjectsController < ApplicationController
  before_action :authorize_request
  before_action :project_find, only: %i[show update destroy]

  def index
    @projects = @current_user.projects.order(created_at: :desc)

    render json: ProjectSerializer.new(@projects).serialized_json, status: :ok
  end

  def show
    render json: ProjectSerializer.new(@project).serialized_json, status: :ok
  end

  def create
    @project = @current_user.projects.new(project_params)
    if @project.save
      render json: ProjectSerializer.new(@project).serialized_json, status: :created
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def update
    if @project.update(project_params)
      render json: ProjectSerializer.new(@project).serialized_json, status: :ok
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  def destroy
    if @project.destroy
      redirect_to action: :index
    else
      render json: @project.errors, status: :unprocessable_entity
    end
  end

  private

  def project_params
    params.permit(:name)
  end

  def project_find
    @project = @current_user.projects.find(params[:id])
  end
end
