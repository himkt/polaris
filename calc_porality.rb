# -*- coding: utf-8 -*-
require 'sqlite3'
require 'natto'

nm = Natto::MeCab.new
db = SQLite3::Database.new("data/model.db")

polarity = []

nm.parse(gets.chomp).split(/\n/).each do |line|
  break if line == 'EOS'
  value = db.execute("SELECT value FROM models WHERE word = ?",line.split(/\t/)[1].split(/\,/)[6])[0]
  polarity << [value[0]] if value
end

# it have not been calculated well yet.
# I puts these value as a sine value on an unit circle
# Because Data exists from -1 to 1, I use only first quadrant and fourth quadrant.
polarity.each_with_index do |sine,i|
  cosine = (Math.sqrt(1 - sine[0]**2))
  polarity[i] << cosine
end

p polarity

item = polarity.pop

composition_sine = item[0]
composition_cosine = item[1]

polarity.each do |elem|
  composition_sine = composition_sine * item[1] + composition_cosine * item[0]
  composition_cosine = (Math.sqrt(1 - composition_sine**2))
end


p composition_sine
