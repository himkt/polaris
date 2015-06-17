# rakefile

task :build do
  sh "rm -rf data"
  sh "mkdir data"
  sh "curl http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_ja.dic >> data/pn_ja.dic"
  sh "curl http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_en.dic >> data/pn_en.dic"
  sh "nkf -w data/pn_ja.dic > data/pn_ja.dic.conv"
  sh "rm data/pn_ja.dic"
  sh "mv data/pn_ja.dic.conv data/pn_ja.dic"
  sh "bundle exec ruby script/make_database.rb ja"
  sh "bundle exec ruby script/make_database.rb en"
  sh "rm data/pn_ja.dic"
  sh "rm data/pn_en.dic"
end
