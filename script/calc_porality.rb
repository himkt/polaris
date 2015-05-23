# -*- coding: utf-8 -*-
require 'sqlite3'
require 'natto'

module Pos_Neg

  def self.calc sentense

    nm = Natto::MeCab.new
    db = SQLite3::Database.new("data/model.db")

    sum = 0

    nm.parse(sentense).split(/\n/).each do |line|
      elem = line.split(/\t/)
      break if elem[0] == 'EOS' 
      word = (elem[1].split(/\,/)[6] == '*') ? elem[0] : elem[1].split(/\,/)[6]
      value = db.execute("SELECT value FROM models WHERE word = ? LIMIT 1",word)[0]
      sum += value[0] if value
    end

    e = Math.exp(1)
    return (e ** sum - e** (-1 * sum)) / (e ** sum + e** (-1 * sum))
    # "value is #{composition_sine}. (this value have from -1 to 1)"

  end

end
