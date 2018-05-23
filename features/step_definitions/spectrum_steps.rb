Given(/^I am on the homepage$/) do
  visit "https://www.spectrum.com/"
end

#Ensuring links direct correctly
When(/^I click on the (.*?)$/) do |navbar_items|
  case navbar_items
  when "Shop"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://buy.spectrum.com/buyflow/buyflow-localization?v=ORG")
  when "Manage Account"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://www.spectrum.com/")
  when "Support"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://www.spectrum.com/customer-support.html")
  when "Packages"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://www.spectrum.com/packages.html")
  when "Internet"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://www.spectrum.com/internet.html")
  when "Cable TV"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://www.spectrum.com/cable-tv.html")
  when "Phone"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://www.spectrum.com/home-phone.html")
  when "Latino"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://www.spectrum.com/latino-plans.html")
  when "Business"
    first("*[data-linkname=\"#{navbar_items}\"]").click
    expect(page.current_url).to eq("https://business.spectrum.com/")
  end
end

#testing the price a service form
When(/^I can locate the price a service form$/) do
  find(".buyflowEntryForm")
end

Then(/^I can fill out the price a service form$/) do
  fill_in('address1', :with => '11463 Jackson')
  fill_in('apt', :with => '93')
  fill_in('zip', :with => '80504')
end

Then(/^I can submit the form$/) do
  click_button('VIEW ALL OFFERS')
  sleep(2)
end
