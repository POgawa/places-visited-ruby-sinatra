class Place

  @@places_visited = []

  define_method(:initialize) do |location, description|
    @description = description
    @location = location
  end


  define_method(:description) do
    @description
  end

  define_method(:name) do
    @location
  end

  define_singleton_method(:all) do
    @@places_visited
  end

  define_method(:save) do
    @@places_visited.push(self)
  end

  define_singleton_method(:clear) do
    @@places_visited = []
  end


end
