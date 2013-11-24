require 'spec_helper'

describe ProjectsController do
  
  describe 'GET index' do
    
    let(:project) { double('project') }

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
end
