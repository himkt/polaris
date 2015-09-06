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
      ja_text = open('http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_ja.dic').read.encode('utf-8')
      en_text = open('http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_en.dic').read.encode('utf-8')

      unless File.exists?("#{@home}/.polaris/features.sqlite3")
      end

    end

    def clean
    end

  end
end
