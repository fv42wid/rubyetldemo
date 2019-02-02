require 'csv'

class TestSource
  attr_reader :input

  def initialize
    @input = 'people.csv'
  end

  def each
    csv = CSV.open(@input, headers: true)
    csv.each do |row|
      yield(row.to_hash)
    end
    csv.close
  end

end