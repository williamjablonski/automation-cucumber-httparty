require 'httparty'
require 'rspec'

response = nil

Given(/^I send a first param as "([^"]*)", a second param as "([^"]*)" and a third as "([^"]*)"$/) do |name, email, body|
  begin
  response = HTTParty.post('http://jsonplaceholder.typicode.com/posts/1/comments', 
    :body => { :name => name.to_s, 
               :email => email.to_s, 
               :body => body.to_s
             }.to_json,
    :headers => { 'Content-Type' => 'application/json' } )
end
end

Then(/^the response status should be "([^"]*)"$/) do |status_code|
  	expect(response.code).to eq(status_code.to_i)
end

Given(/^I delete the comment$/) do
  begin
    response = HTTParty.delete('http://jsonplaceholder.typicode.com/comments/1')
  end
end