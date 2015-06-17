# -*- coding: utf-8 -*-

require './script/calc_porality'

# this counts trial number
i = 0

# this counts right answers
j = 0


File.foreach('data/sentiment.utf8.txt') do |line|
  puts "i: #{i}"
  puts "j: #{j}"
  tag = line[0...2].to_f
  line = line[3...-1]
  value = Pos_Neg::calc line
  next if value == 0
  if value < 0
    j += 1 if tag < 0
    i+=1
  else
    j += 1 if tag > 0
    i+=1
  end
end

puts "i: #{i}"
puts "j: #{j}"
