# -*- coding: utf-8 -*-

require './script/calc_porality'

print "please input a sentence: "
sentense = gets.chomp

puts "value is #{Pos_Neg::calc sentense}. (this value have from -1 to 1)"
