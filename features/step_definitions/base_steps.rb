Then(/^I validate multiple (.*?)$/) do |nav_items|
  item = first("*[data-linkname=\"#{nav_items}\"]")
  expect(item.text).to eq(nav_items)
end
