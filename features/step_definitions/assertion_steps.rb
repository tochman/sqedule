Then("I should see {string}") do |content|
  expect(page).to have_content content
end

Then("I should see {string} within date field number {string}") do |content, div_id|
  within ("#date_#{div_id.to_i-1}") do
    expect(page).to have_content content
  end
end

Then('stop') do
  save_and_open_page
end