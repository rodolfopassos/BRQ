Given(/^I perform an API GET call to the service "([^"]*)"$/) do | service |
  @api = HTTParty.get("http://correiosapi.apphb.com/cep/" + service + "/")
end

When(/^I get the results$/) do
  @api.each do | item |
    puts item["results"]
  end
end

Then(/^Then I must see the complete address (\d+)$/) do | results |
  expect(@api.code).to eq results
end
