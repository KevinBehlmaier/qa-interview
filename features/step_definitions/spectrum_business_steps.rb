Given(/^I am on the Spectrum Business page$/) do
  visit "https://business.spectrum.com/"
end

When(/^I can complete the offers form$/) do
  fill_in('address1', :with => '11463 Jackson')
  fill_in('apt', :with => '93')
  fill_in('zip', :with => '80504')
end
Then(/^I can submit the information$/) do
  click_button('GO')
end
