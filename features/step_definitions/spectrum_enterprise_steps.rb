Given(/^I am on the Spectrum Enterprise Solutions page$/) do
  visit "https://enterprise.spectrum.com/"
end

Then(/^I can click on each button$/) do
  click_on("See what's changing")
end
