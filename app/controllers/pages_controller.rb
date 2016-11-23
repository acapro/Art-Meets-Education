class PagesController < ApplicationController
  before_action :get_projects

  def index
    @featured_kids = Kid.limit(9).order("RANDOM()")
  end

  def abouts
    redirect_to page_about_path(AboutSection.first.path)
  end

  def about
    @about_sections = AboutSection.all.order(:created_at)
    @about_section = AboutSection.find_by path: (params[:path])
  end

  def project
    @project = Project.find(params[:id])
  end
  def projects
    redirect_to page_project_path(@projects.first.id)
  end
  def kid
    @kid = Kid.find(params[:id])
  end

  private
  def get_projects
    @projects = Project.order(year: :desc)
  end
end
