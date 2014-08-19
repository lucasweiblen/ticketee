class ProjectsController < ApplicationController
  def index
  end

  def new
    @project = Project.new
  end

  def show
    @project = Project.find(params[:id])
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to @project, notice: "Project has been created."
    else
      render 'new'
    end
  end

  def project_params
    params.require(:project).permit(:name, :description)
  end
end