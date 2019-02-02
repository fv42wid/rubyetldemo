require 'mysql2'
require 'uri'

class MyDestination

  def initialize
    #connection = 'mysql://testuser:testpass1@testdb.cgrusstc3jey.us-west-2.rds.amazonaws.com/etlprod'
    @mysql = Mysql2::Client.new(:host => 'testdb.cgrusstc3jey.us-west-2.rds.amazonaws.com', :username => 'testuser', :password => 'testpass1', :database => 'etlprod')
  end

  def write(row)
    @mysql.query("INSERT INTO people (fname, lname, position) VALUES ('#{row['fname']}', '#{row['lname']}', '#{row['position']}')")
  end
end