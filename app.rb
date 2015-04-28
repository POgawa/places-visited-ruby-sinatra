require ("sinatra")
require ('sinatra/reloader')
require('./lib/PYB.rb')
also_reload('lib/**/*.rb')




get('/') do
   erb(:index)
end

get('/output') do
  @location = params.fetch('location')
  @description = params.fetch('description')
  @places = Place.new(@location, @description)
  @places.save()
  # @output_location = @places.name()
  # @output_description = @places.description()

  @all_places = Place.all()

  erb(:output)

end
