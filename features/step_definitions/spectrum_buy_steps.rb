Given(/^I am on the Spectrum buy page$/) do
  visit "https://buy.spectrum.com/buyflow/buyflow-localization?v=ORG"
end

When(/^I only fill out address and hit continue$/) do
  fill_in('address1', :with => '11463 Jackson')
  click_button('CONTINUE')
end

Then(/^I should get the error message for zip code$/) do
  error = find(".error.bubble")
  expect(error.text).to eq("Please enter your zip code.")
end
