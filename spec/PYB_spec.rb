require "rspec"
require "pry"
require "PYB"



describe(Place) do

  describe('description') do
    it('allows you to add a description of a place that yo uhave visited') do
      test_place = Place.new('Ukraine','A magical place')
      expect(test_place.description()).to(eq('A magical place'))
    end
  end

  describe('.all') do
    it('initially creates an empty array') do
      expect(Place.all()).to(eq([]))
    end
  end

  describe('location') do
    it('adds a locatoin name for the place') do
      test_place = Place.new('Ukraine', 'A magical place')
      expect(test_place.name()).to(eq('Ukraine'))
    end
  end

  describe('save') do
    it('saves the location and description of a plae') do
    test_place = Place.new('Ukraine', 'a magical place')
    test_place.save()
    expect(Place.all()).to(eq([test_place]))
  end
end


end
