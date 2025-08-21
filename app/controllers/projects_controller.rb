class ProjectsController < ApplicationController
  def index
    @projects = Project.order(created_at: :desc)
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    if @project.save
      flash[:notice] = "Project was successfully created."
      redirect_to project_path(@project)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @project = Project.find(params[:id])
  end

  def update
    @project = Project.find(params[:id])

    if @project.update(project_params)
      flash[:notice] = "Project was successfully updated."
      redirect_to project_path(@project)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private
  def project_params
    params.expect(project: [ :name ])
  end
end
