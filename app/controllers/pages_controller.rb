class PagesController < ApplicationController
  before_action :get_projects, only: [:index, :projects, :project]

  def index
  end
  def project
    @project = Project.find(params[:id])
  end
  def projects
    redirect_to page_project_path(@projects.first.id)
  end

  private
  def get_projects
    @projects = Project.order(year: :asc)
  end
end
