require 'spec_helper'

describe Sifter do

  let(:sifter) { Sifter.new }

  it "gets all the projects" do
    stub_get('/api/projects', 'ex_projects.json')
  end
end