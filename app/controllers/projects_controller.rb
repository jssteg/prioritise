class ProjectsController < ApplicationController
  
  helper SifterHelper

  def index
    @projects = sifter_account.projects
  end

  def show 
    @project = sifter_account.projects.select { |p| p.name == params[:name] }.first
    @issues = @project.issues(1)
  end

end
