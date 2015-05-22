# -*- coding: utf-8 -*-
require 'sqlite3'
require 'stemmify'

dic = Hash.new

if ARGV[0] == 'ja'

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

elsif ARGV[0] == 'en'
  puts 'make a model'
  File.foreach('data/pn_en.dic') do |line|
    if item = line.chomp.split(/\:/)
      dic[item[0]] = item[2]
    end
  end
  puts 'done'

  db = SQLite3::Database.new("data/model.db")
  puts 'insert a value into a database'
  dic.each do |word,value|
    sql = <<-SQL
    INSERT INTO models (word, value) VALUES('#{word}', #{value});
    SQL
    begin
      db.execute(sql)
    rescue
    end
  end
  puts 'done'
end
