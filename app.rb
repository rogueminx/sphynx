require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/sphynx')
require('pry')

get('/') do
  erb(:input)
end

post ('/output') do

  erb(:output)
end
