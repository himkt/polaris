# -*- coding: utf-8 -*-
require 'sqlite3'
require 'natto'

nm = Natto::MeCab.new
db = SQLite3::Database.new("data/model.db")

polarity = []

nm.parse(gets.chomp).split(/\n/).each do |line|
  break if line == 'EOS'
  value = db.execute("SELECT value FROM models WHERE word = ?",line.split(/\t/)[0])[0]
  polarity << value[0] if value
end


# it have not been calculated well yet.
p polarity
