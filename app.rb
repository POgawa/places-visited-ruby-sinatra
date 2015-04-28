require ("sinatra")
require ('sinatra/reloader')
require('./lib/PYB.rb')
also_reload('lib/**/*.rb')




get('/') do
   erb(:index)
end
