class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end  

  def new
  end

  def create
    @project = Project.new(params.require(:project).permit(:name, :desc))
    @project.save

    redirect_to @project
  end
end
