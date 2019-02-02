require './my_source.rb'
require './my_destination.rb'

class TestEtl

  source MySource

  transform do |row|
    row[:fname] += 'xyz'
    row
  end

  destination MyDestination
end