Given(/^there is a project with the following details:$/) do |table|
  # table is a Cucumber::Ast::Table
  table.hashes.each do |project|
    Project.create(title: project[:name], sifter_id: project[:sifter_id])
  end
end

Given /^I am on the projects page$/ do
  visit projects_path
end

When /^I go to the project page for (.+)$/ do |project_name|
  click_link project_name 
end

Then /^I should get results$/ do
  pending # express the regexp above with the code you wish you had
end