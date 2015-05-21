# -*- coding: utf-8 -*-
require 'sqlite3'

dic = Hash.new

puts 'make a model'
File.foreach('data/pn_ja.dic') do |line|
  if item = line.chomp.split(/\:/)
    dic[item[0]] = item[3]
  end
end
puts 'done'


puts 'make a database'
db = SQLite3::Database.new("data/model.db")
sql = <<-SQL
  CREATE TABLE models (
  word TEXT ,
  value REAL
  );
SQL
db.execute(sql)
puts 'done'


puts 'insert a value into a database'
dic.each do |word,value|
  sql = <<-SQL
    INSERT INTO models (word, value) VALUES('#{word}', #{value});
  SQL
  db.execute(sql)
end
puts 'done'
