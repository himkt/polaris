# -*- coding: utf-8 -*-

require 'sqlite3'
require 'open-uri'
require 'natto'

module Polaris

  module Nlp
    module_function
    @path_to_db = "#{Dir.home}/.polaris/features.sqlite3"

    # init method is called in first setup.
    def calc_polarity(sentence)

      if File.exists?(@path_to_db)
        puts 'a'
        db = SQLite3::Database.new("#{@home}/.polaris/features.sqlite3")
        nm = Natto::MeCab.new

        sum = 0
        nm.parse(sentence).split(/\n/).each do |line|
          elem = line.split(/\t/)
          break if elem[0] == 'EOS' 
          word = (elem[1].split(/\,/)[6] == '*') ? elem[0] : elem[1].split(/\,/)[6]
          value = db.execute("SELECT value FROM models WHERE word = ? LIMIT 1",word)[0]
          sum += value[0] if value
        end
        e = Math.exp(1)
        return (e ** sum - e** (-1 * sum)) / (e ** sum + e** (-1 * sum))
      else
        puts ("features.sqlite3 not found.\nplease run Polaris::Nlp.init")
        exit
      end

    end

  end
end
