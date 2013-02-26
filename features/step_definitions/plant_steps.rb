Given /^I am on the home page$/ do
  visit path_to("home page")
end

When /^I follow "(.*?)"$/ do |arg1|
  click_link(arg1)
end

When /^I press "(.*?)"$/ do |arg1|
  click_on(arg1)
end

When /^I fill in "(.*?)" with "(.*?)"$/ do |arg1, arg2|
  fill_in(arg1, :with => arg2)
end