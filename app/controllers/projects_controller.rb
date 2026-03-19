class ProjectsController < ApplicationController
  def index
    data = Projects::IndexData.call
    @projects = data.projects
  end

  def show
    data = Projects::ShowData.call(project_id: params[:id])
    @project = data.project
  end
end
