require 'spec_helper'

describe ProjectsController do
  let(:project) { double('project', id: 37) }
  
  describe 'GET index' do
    
    it 'assigns all projects to @projects' do
      Project.stub(:all) {[project]}
      get :index
      assigns(:projects).should eq([project])
    end
    
    it 'renders the index page' do
      get :index
      response.should render_template("index")
    end

  end

  describe 'GET show' do
    
    before(:each) do
      Project.stub(:find) {project}
    end

    it "assigns the requested project as @project" do
      get :show, :id => 37
      assigns(:project).should be(project)
    end

    it "renders the show template" do
      get :show, :id => 37
      response.should render_template("show")
    end

  end

end
