require('sinatra')
require('sinatra/reloader')
require('./lib/instance-checker')
require('capybara/rspec')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/instances_result') do
  @string = params.fetch('string')
  @word = params.fetch('word').downcase
  @results = @string.instance_check(@word)
  erb(:results)
end
