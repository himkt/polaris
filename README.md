# Polarity analysis

This programm do a polarity analysis.  

I use dataset made public by Tokyo Institute of Technology.  

[Semantic Orientations of Words](http://www.lr.pi.titech.ac.jp/~takamura/pndic_en.html)

## How to use

in this repository, plase run

```shell
mkdir data
cd data
curl http://www.lr.pi.titech.ac.jp/%7Etakamura/pubs/pn_ja.dic >> pn_ja.dic
```

this dataset is encoded with Shift_JIS.  

So if your computer's chaset is UTF-8, you need to convert charset.

```shell
nkf pn_ja.dic -w > pn_ja.dic.conv
rm pn_ja.dic
mv pndic_en.dic.conv pn_ja.dic
```

Then,

```ruby
ruby make_database.rb
ruby calc_polarity.rb
```

## reference

Hiroya Takamura, Takashi Inui, Manabu Okumura,
"Extracting Semantic Orientations of Words using Spin Model", In Proceedings of the 43rd Annual Meeting of the Association for Computational Linguistics (ACL2005) , pages 133--140, 2005.
