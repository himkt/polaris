# makefile

build: make_database.rb
	rm -rf data
	mkdir data
	curl http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_ja.dic >> data/pn_ja.dic
	curl http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_en.dic >> data/pn_en.dic
	nkf -w data/pn_ja.dic > data/pn_ja.dic.conv
	rm data/pn_ja.dic
	mv data/pn_ja.dic.conv data/pn_ja.dic
	bundle exec ruby make_database.rb ja
	bundle exec ruby make_database.rb en
