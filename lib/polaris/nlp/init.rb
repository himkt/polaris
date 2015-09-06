# -*- coding: utf-8 -*-

require 'sqlite3'
require 'open-uri'

module Polaris

  module Nlp
    module_function

    @home = Dir.home

    # init method is called in first setup.
    def init

      unless Dir.exists?("#{@home}/.polaris")
        Dir.mkdir("#{@home}/.polaris")
      end
      ja_text = open('http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_ja.dic').read.encode('utf-8','sjis')
      en_text = open('http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_en.dic').read.encode('utf-8','sjis')

      db = SQLite3::Database.new("#{@home}/.polaris/features.sqlite3")
      db.execute("DROP TABLE models")
      db.execute("CREATE TABLE models (word TEXT ,value REAL);")


      ja_text.split("\n").each do |line|
        item = line.split(':')
        word = item[0]
        value = item[3]
        insert_value(db,word,value)
      end

      en_text.split("\n").each do |line|
        item = line.split(':')
        word = item[0]
        value = item[2]
        insert_value(db,word,value)
      end

    end

    def insert_value(db,word,value)
      return db.execute("INSERT INTO models (word, value) VALUES('#{word}', #{value});")
    end

    def clean
    end

  end
end
