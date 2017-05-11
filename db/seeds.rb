# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#Tweet.create(text: 'hoge')

require "csv"

lines_csv = CSV.readlines("db/lines.csv")
lines_csv.shift
lines_csv.each do |row|
  Line.create(memo: row[1])
end