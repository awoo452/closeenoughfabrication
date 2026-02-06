class ProjectsController < ApplicationController
  before_action :set_project, only: %i[edit update destroy]
  before_action :authenticate_user!, only: %i[create edit update destroy]

  def index
    data = Projects::IndexData.call
    @projects = data.projects
  end

  def show
    data = Projects::ShowData.call(project_id: params[:id])
    @project = data.project
  end

  def new
    @project = Project.new
  end

  def create
    result = Projects::CreateProject.call(params: project_params)
    @project = result.project

    if result.success?
      redirect_to @project, notice: 'Project was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    result = Projects::UpdateProject.call(project: @project, params: project_params)
    @project = result.project

    if result.success?
      redirect_to @project, notice: 'Project was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    Projects::DestroyProject.call(project: @project)
    redirect_to projects_url, notice: 'Project was successfully destroyed.'
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:title, :description, :image, :url, :featured)
  end
end
