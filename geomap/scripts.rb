require "sqlite3"
require "csv"

arr_of_arrs = CSV.read('/Users/eliotj/Documents/Repositories/pulmap-data/geomap/data-clean/bottom_1_out_data.csv')
db = SQLite3::Database.new "/Users/eliotj/Documents/Repositories/pulmap-data/geomap/geomap.sqlite3"

arr_of_arrs.each do |val|
  command = "insert into Data2 values ( \"#{val[0]}\", \"#{val[1]}\", \"#{val[2]}\", \"#{val[3]}\", \"#{val[4]}\", \"#{val[5]}\" )"
  puts command
  db.execute command
end
