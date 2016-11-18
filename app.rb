require('sinatra')
require('sinatra/reloader')
require('./lib/instance-checker')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end
